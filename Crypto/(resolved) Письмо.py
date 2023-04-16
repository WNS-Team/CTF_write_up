# resolved
"https://planetcalc.com/8047/"

alphabet = "abcdefghijklmnopqrstuvwxyz"
key = "TNWBFXCQKMISGEUPYDRJHZOALV"
# nbkaxlwscquojmyrid'g0e9t1_pz{86}
with open('Письмо.txt') as file:
    text = file.read()

print("".join([key[alphabet.find(a)] if a in alphabet else a for a in text.lower() ]).split()[len("".join([key[alphabet.find(a)] if a in alphabet else a for a in text.lower() ]).split())-1])


