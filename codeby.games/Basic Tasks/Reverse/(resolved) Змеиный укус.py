key = "ZHEkjgfhdiIR"
flag = []

with open('flag.enc', 'rb') as fh:
    content = list(fh.read())

for i in range(len(content)):
    flag.append(content[i]^ord(key[i%12]))

file_handler = open("flag.png", "wb")
barray = bytearray(flag)
file_handler.write(barray)
file_handler.close()
