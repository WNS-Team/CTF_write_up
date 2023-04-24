# resolved
# coding=utf-8
from pwn import *

alphabet = ['a', 'b', 'c', 'f', '0', 't', '6', '7', '8']
# alphabet = ['b','0','6','7','8']

chache = 0


with open('flag111.txt', 'w') as file:
    count = 0
    final = 1487
    one = 'actf{'
    for i in one:
        count += ord(i)
    last = '}'
    count += ord(last)
    print(count)
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
                                                    print(part)
    #                                                 for i in part:
    #                                                     check += ord(i)
    #                                                 if count + check == final:
    #                                                     qqq = False
    #                                                     for p in alphabet:
    #                                                         if p in part:
    #                                                             qqq *= True
    #                                                     if qqq:
    #                                                         print(f"{one}{part}{last}")
    #                                                         file.write(f"{one}{part}{last}\n")

# ch = 0
# for i in 'actf{aact0ft0f}':
#     ch+=ord(i)
# print(ch)
