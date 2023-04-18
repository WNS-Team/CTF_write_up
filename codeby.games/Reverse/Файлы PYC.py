# coding=utf-8
"""""
# uncompyle6 version 3.7.4
# Python bytecode 3.8 (3413)
# Decompiled from: Python 3.8.6 (tags/v3.8.6:db45529, Sep 23 2020, 15:37:30) [MSC v.1927 32 bit (Intel)]
# Embedded file name: C:\\Users\\maksc\\uwu\\Codeby_Tasks\\Reverse\\pyc pyc pyc\\resources\\gen.py
# Compiled at: 2022-06-30 18:55:45
# Size of source mod 2**32: 501 bytes
randb = b'\\;\xfe\xf5E\xff]\xe3\xc3i\xa0\x07\xacO\x97\xb9k\x8f'
enc = b'!|\x90\xc4.\xa0n\x88\xf7\x07\xf3|\xf5\r\xd2\xfd$\xcc'
enc = enc[::-1]
randb = randb[::-1]
flag = input('ENTER FLAG: ')
flag = flag.encode()
if len(flag) != len(enc):
    print('WRONG FLAG!!!')
else:
    f = 1
    for i in range(len(flag)):
        if enc[i] ^ randb[i] != flag[i]:
            f = 0
            break
    else:
        if f:
            print('CORRECT FLAG!!!')
        else:
            print('WRONG FLAG!!!')
"""""

import string

alph = string.ascii_lowercase + string.ascii_uppercase + string.digits + string.punctuation
randb = b'\\;\xfe\xf5E\xff]\xe3\xc3i\xa0\x07\xacO\x97\xb9k\x8f'
enc = b'!|\x90\xc4.\xa0n\x88\xf7\x07\xf3|\xf5\r\xd2\xfd$\xcc'
enc = enc[::-1]
randb = randb[::-1]

for i in range(len(enc)):
    for j in range(len(alph)):
        if enc[i] ^ randb[i] == (ord(alph[j])):
            print(alph[j],end='')
