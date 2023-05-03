# coding=utf-8
import requests
from bs4 import BeautifulSoup

# while (True):



url = "https://www.ph4.ru/random.php"

session = requests.Session()

response = session.get(url)
soup = BeautifulSoup(response.text, "html.parser")
quotes = soup.find('script', language="JavaScript").text.split()
print(soup)
print(quotes[len(quotes)-1])
url = f"https://www.ph4.ru/{quotes[len(quotes)-1]}"
response = session.get(url)
soup = BeautifulSoup(response.text, "html.parser")
print(soup)
