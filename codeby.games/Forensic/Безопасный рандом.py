import random
import time
import datetime

date = datetime.datetime(2022, 6, 30, 14, 40)
timestamp = date.timestamp()

random.seed(int(timestamp))
print(timestamp)
struct = time.localtime(timestamp)
print(time.strftime('%d.%m.%Y %H:%M', struct))


FLAG = b"CODEBY{?????????????????}"
random = random.randbytes(len(FLAG))
enc = open('Безопасный рандом.txt', 'rb').read()
dec = bytes(i ^ j for i, j in zip(enc, random))

print(dec)




