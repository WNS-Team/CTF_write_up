# resolved
# coding=utf-8
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
            if obj == 1 and (count - key[len(key) - 2]) <= 5:
                key.append(count)
                if "\"" not in line[-4:-2]:
                    key.append(line[-4:-2])
                else:
                    key.append(line[-3:-2])
                obj = 0
                continue
            elif obj == 1 and len(key) > 0:
                key.pop(len(key) - 1)
                key.pop(len(key) - 1)
                obj = 0

            else:
                obj = 0
            obj += 1
            key.append(count)
            if "\”" not in line[-4:-2]:
                key.append(line[-4:-2])
            else:
                key.append(line[-5:-2])

for i in range(len(data)):
    for j in range(len(key)):
        if str(data[i]) == key[j]:
            print(key[j + 2], end='')



