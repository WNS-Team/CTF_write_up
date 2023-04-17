# coding=utf-8
import string
import re

# File data:
data = [48, 34, 61, 72, 92, 75, 85, 86, 49, 19, 17, 84, 36, 78, 20, 79, 32, 64, 39, 14, 62, 91, 11, 21, 29]
# Exe file contains --> pasrsing to .asm file


count = 0
obj = 0
key = []
chet = 0
with open('Функциональный ад.asm') as f:
    for line in f.readlines():
        count += 1
        if re.search("""(?:([\"]))""" + "." + """(?:([\"]))""", line) or re.search(
                """(?:([\"]))""" + "." + "." + """(?:([\"]))""", line):
            # if obj == 1:
            #     if count - key[obj][obj] < 5:
            #         obj = 0
            #         key[obj][obj+1] = count
            #         key[obj + 1][obj+1] = line[-5:]
            #     obj = 0
            if obj == 1 and (count - key[len(key) - 2]) <= 5:
                key.append(count)
                key.append(line[-5:])
                obj = 0
            else:
                obj = 0
            obj += 1
            key.append(count)
            print(line[-5:])
            key.append(line[-5:])
            # key[obj][obj] = count
            # key[obj + 1][obj] = line[-5:]
            # obj += 1

print(key)
