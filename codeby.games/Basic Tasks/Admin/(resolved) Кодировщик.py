# resolved
# coding=utf-8
from pwn import *

host = "62.173.140.174"
port = 10002

r = remote(host, port)
r.sendline(b'start')
a = True
while a:
    answer = r.recv().decode('utf-8')
    if '/50)' in answer:
        pos = answer.rfind(')')
        bas = bytes(answer[pos + 2:-6], 'utf-8')
        flag = base64.b32encode(bas)
        r.sendline(flag)
    if 'CODEBY' in answer:
        print(answer)
        a = False
r.close()
