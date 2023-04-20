# resolved

ciph = b'+\x7ft1*iK\x1c[Io\x16\x1a\x00o\x1aYS\x03+\x10\x00B\t'
flag = 'CODEBY{'

key = [104, 48, 48, 116]
for i in range(len(ciph)):
    j = i % 4
    print(chr(ciph[i] ^ key[j]), end='')