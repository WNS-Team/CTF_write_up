import argparse
import datetime
import json
import logging
import random
import re
import sys
import time

import requests
from urllib3.exceptions import LocationParseError

try:  # Python 2
    from urllib.parse import urljoin, urlparse
except ImportError:  # Python 3
    from urllib.parse import urljoin, urlparse

try:  # Python 2
    reload(sys)
    sys.setdefaultencoding('latin-1')
except NameError:  # Python 3
    pass


class Crawler(object):
    def __init__(self):

        self._config = {}
        self._links = []
        self._start_time = None

    class CrawlerTimedOut(Exception):

        pass

    def _request(self, url):

        random_user_agent = random.choice(self._config["user_agents"])
        headers = {'user-agent': random_user_agent}

        response = requests.get(url, headers=headers, timeout=5)

        return response

    @staticmethod
    def _normalize_link(link, root_url):

        try:
            parsed_url = urlparse(link)
        except ValueError:
            return None
        parsed_root_url = urlparse(root_url)

        if link.startswith("//"):
            return "{}://{}{}".format(parsed_root_url.scheme, parsed_url.netloc, parsed_url.path)

        if not parsed_url.scheme:
            return urljoin(root_url, link)

        return link

    @staticmethod
    def _is_valid_url(url):

        regex = re.compile(
            r'^(?:http|ftp)s?://'  # http:// or https://
            r'(?:(?:[A-Z0-9](?:[A-Z0-9-]{0,61}[A-Z0-9])?\.)+(?:[A-Z]{2,6}\.?|[A-Z0-9-]{2,}\.?)|'  # domain...
            r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})'  # ...or ip
            r'(?::\d+)?'  # optional port
            r'(?:/?|[/?]\S+)$', re.IGNORECASE)
        return re.match(regex, url) is not None

    def _is_blacklisted(self, url):

        return any(blacklisted_url in url for blacklisted_url in self._config["blacklisted_urls"])

    def _should_accept_url(self, url):

        return url and self._is_valid_url(url) and not self._is_blacklisted(url)

    def _extract_urls(self, body, root_url):

        pattern = r"href=[\"'](?!#)(.*?)[\"'].*?"  # ignore links starting with #, no point in re-visiting the same page
        urls = re.findall(pattern, str(body))

        normalize_urls = [self._normalize_link(url, root_url) for url in urls]
        filtered_urls = list(filter(self._should_accept_url, normalize_urls))

        return filtered_urls

    def _remove_and_blacklist(self, link):

        self._config['blacklisted_urls'].append(link)
        del self._links[self._links.index(link)]

    def _browse_from_links(self, depth=0):

        is_depth_reached = depth >= self._config['max_depth']
        if not len(self._links) or is_depth_reached:
            logging.debug("Hit a dead end, moving to the next root URL")
            return

        if self._is_timeout_reached():
            raise self.CrawlerTimedOut

        random_link = random.choice(self._links)
        try:
            logging.info("Visiting {}".format(random_link))
            sub_page = self._request(random_link).content
            sub_links = self._extract_urls(sub_page, random_link)

            time.sleep(random.randrange(self._config["min_sleep"], self._config["max_sleep"]))

            if len(sub_links) > 1:
                self._links = self._extract_urls(sub_page, random_link)
            else:
                self._remove_and_blacklist(random_link)

        except requests.exceptions.RequestException:
            logging.debug("Exception on URL: %s, removing from list and trying again!" % random_link)
            self._remove_and_blacklist(random_link)

        self._browse_from_links(depth + 1)

    def load_config_file(self, file_path):

        with open(file_path, 'r') as config_file:
            config = json.load(config_file)
            self.set_config(config)

    def set_config(self, config):
        self._config = config

    def set_option(self, option, value):
        self._config[option] = value

    def _is_timeout_reached(self):

        is_timeout_set = self._config["timeout"] is not False  # False is set when no timeout is desired
        end_time = self._start_time + datetime.timedelta(seconds=self._config["timeout"])
        is_timed_out = datetime.datetime.now() >= end_time

        return is_timeout_set and is_timed_out

    def crawl(self):

        self._start_time = datetime.datetime.now()

        while True:
            url = random.choice(self._config["root_urls"])
            try:
                body = self._request(url).content
                self._links = self._extract_urls(body, url)
                logging.debug("found {} links".format(len(self._links)))
                self._browse_from_links()

            except requests.exceptions.RequestException:
                logging.warn("Error connecting to root url: {}".format(url))

            except MemoryError:
                logging.warn("Error: content at url: {} is exhausting the memory".format(url))

            except LocationParseError:
                logging.warn("Error encountered during parsing of: {}".format(url))

            except self.CrawlerTimedOut:
                logging.info("Timeout has exceeded, exiting")
                return


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--log', metavar='-l', type=str, help='logging level', default='info')
    parser.add_argument('--config', metavar='-c', required=True, type=str, help='config file')
    parser.add_argument('--timeout', metavar='-t', required=False, type=int,
                        help='for how long the crawler should be running, in seconds', default=False)
    args = parser.parse_args()

    level = getattr(logging, args.log.upper())
    logging.basicConfig(level=level)

    crawler = Crawler()
    crawler.load_config_file(args.config)

    if args.timeout:
        crawler.set_option('timeout', args.timeout)

    crawler.crawl()


if __name__ == '__main__':
    main()
