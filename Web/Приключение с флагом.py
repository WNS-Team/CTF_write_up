# coding=utf8
from bs4 import BeautifulSoup as bs
import requests
from urllib.parse import urljoin
import numpy as np

url = 'http://62.173.140.174:16001/'
robots = 'http://62.173.140.174:16001/robots.txt'
part_flag = [b'part1:', b'part2:', b'part3:', b'part4:']
site_pars = requests.session()
# site_pars.headers["User-Agent"] = "Mozilla/5.0 (platform; rv:geckoversion) Gecko/geckotrail Firefox/firefoxversion"
html = site_pars.get(url).content
soup = bs(html, 'html.parser')
script_files = []
for script in soup.find_all('script'):
    if script.attrs.get('src'):
        script_url = urljoin(url, script.attrs.get('src'))
        script_files.append(script_url)

css_files = []
for css in soup.find_all('link'):
    if css.attrs.get('href'):
        css_url = urljoin(url, css.attrs.get('href'))
        css_files.append(css_url)

for pars in np.concatenate((url, script_files, css_files, robots), axis=None):
    site = requests.session()
    html = site.get(pars).content
    for part in part_flag:
        if html.split().count(part) > 0:
            try:
                print(str(html.split()[html.split().index(part) + 1])[2:-1], end='')
            except:
                break
