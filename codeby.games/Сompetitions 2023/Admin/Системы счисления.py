# coding=utf-8

from pwn import *

host = "62.173.140.174"
port = 20000

r = remote(host, port)
r.sendline(b'start')
a = True
while a:
    answer = r.recv().decode('utf-8')
    if '/100)' in answer:
        pos = answer.rfind(')')
        bas = answer[pos + 2:-6]
        flag = bytes(str(eval(bas)), encoding='utf-8')
        r.sendline(flag)
    if 'CODEBY' in answer:
        print(answer)
        a = False
r.close()
