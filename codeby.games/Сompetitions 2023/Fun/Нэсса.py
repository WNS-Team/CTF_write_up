from Cryptodome.Util.number import long_to_bytes

hex_inp = '1526d4b54fea973e876f1364e54807e8f814b47dc24d0f4d259a86a03e7edac6'
flag = long_to_bytes(9567178067102215212717839988390268380768723021093618212721537928973961321158)
print(flag)