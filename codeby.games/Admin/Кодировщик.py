# coding=utf-8
from pwn import *

host = "62.173.140.174"
port = 10002

r = remote(host, port)
r.sendline(b'start')
i = 0
while True:
    print('packen nomber: ', i)
    i += 1
    answer = r.recv().decode('utf-8')
    print(answer)
    if '/50)' in answer:
        pos = answer.rfind(')')
        bas = bytes(answer[pos + 2:-6], 'utf-8')
        print('Base32 ', bas)
        flag = base64.b32encode(bas)
        print(flag)
        r.sendline(flag)
r.close()
