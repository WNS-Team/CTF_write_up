# coding=utf-8
import requests
from bs4 import BeautifulSoup

while (True):
    link_mas = []
    link_valid = []
    link_valid = []

    url = "https://www.ph4.ru/random.php"
    session = requests.Session()
    response = session.get(url)
    soup = BeautifulSoup(response.text, "html.parser")
    quotes = soup.find('script', language="JavaScript").text.split()
    url = f"https://www.ph4.ru/{quotes[len(quotes) - 1][1:-1]}"
    response = session.get(url)
    find_link = BeautifulSoup(response.text, "html.parser")
    print(url)

    for a in find_link.find_all('a', href=True):
        if 'https' in a['href'] and 'ph4' not in a['href'] and ' ' not in a['href']:
            link_mas.append(a['href'])

    for link in link_mas:
        try:
            if requests.get(link, timeout=0.5).status_code == 200:
                link_valid.append(link)
        except:
            continue

    link_valid = set(link_valid)
    print(link_valid)

# for link_simple in link_valid:

#print(link_valid)
