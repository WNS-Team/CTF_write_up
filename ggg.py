# resolved
# coding=utf-8
from pwn import *

host = "challs.actf.co"
port = 32100
r = remote(host, port)
a = True

alphabet = ['a', 'b', 'c', 'f', '0', 't', '6', '7', '8']
# alphabet = ['b','0','6','7','8']

flag = [97, 98, 99, 102, 48, 116, 54, 55, 56, 123, 125]  # a b c f 0 t 6 7 8 { }             actf{}
flag2 = [48, 102, 54, 97, 55, 99, 56, 116, 123]  # 0 f 6 a 7 c 8 t {
flag3 = [123, 97, 55, 125, 54, 56, 102, 98, 48, 116]  # { a 7 } 6 8 f b 0 t
flag4 = [97, 98, 99, 102, 48, 116, 54, 55, 56, 123, 125]
flag5 = set(flag + flag2 + flag3 + flag4)  # a b c f 0 t 6 7 8 { }
flag6 = []
chache = 0
for i in flag5:
    print(chr(int(i)), end=' ')
    # 1487
    # 973
    # chache += int(i)
# print(chache)

#
with open('flag.txt', 'w') as file:
    count = 0
    final = 1487
    one = 'actf{'
    for i in one:
        count += ord(i)
    last = '}'
    count += ord(last)
    for i1 in alphabet:
        for i2 in alphabet:
            for i3 in alphabet:
                for i4 in alphabet:
                    for i5 in alphabet:
                        for i6 in alphabet:
                            for i7 in alphabet:
                                for i8 in alphabet:
                                    for i9 in alphabet:
                                        for i10 in alphabet:
                                            for i11 in alphabet:
                                                for i12 in alphabet:
                                                    check = 0
                                                    part = i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9 + i10 + i11 + i12
                                                    for i in part:
                                                        check += ord(i)
                                                    if count + check == final:
                                                        qqq = False
                                                        for p in alphabet:
                                                            if p in part:
                                                                qqq *= True
                                                        if qqq:
                                                            print(f"{one}{part}{last}")
                                                            file.write(f"{one}{part}{last}\n")

# ch = 0
# for i in 'actf{aact0ft0f}':
#     ch+=ord(i)
# print(ch)


alph = []
mas = []
while a:
    try:
        answer = r.recv().decode('utf-8')
        # print(answer)
        if ":" in answer:
            r.sendline(b'1')
        if ">" in answer:
            r.sendline(b'0')
        x = answer.split()
        for x_i in x:
            if x_i.isdecimal():
                print(x_i)
                alph.append(x_i)
    except:
        mas = alph
        # print(set(alph))
        print(set(mas))

        exit()
    # {'123', '97', '55', '125', '54', '56', '102', '98', '48', '116'}
    # {'48', '102', '54', '97', '55', '99', '56', '116', '123'}
    # {97, 98, 102, 48, 116, 54, 55, 56, 123, 125}
    # 97, 98, 99, 102, 48, 116, 54, 55, 56, 123, 125}
    # {97, 98, 99, 102, 48, 116, 54, 55, 56, 123, 125}
    # {97, 98, 99, 102, 48, 116, 54, 55, 56, 123, 125}
