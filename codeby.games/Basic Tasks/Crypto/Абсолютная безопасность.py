import string
from os import urandom
from Crypto.Util.number import long_to_bytes, bytes_to_long
from pwn import *
import binascii


flag = b"CODEBY{???????????????????????????????}"

with open('Абсолютная безопасность.txt', 'r') as f:
    ciphertexts = [line.strip() for line in f.readlines()]

print(ciphertexts)
count = 1
for i in ciphertexts:
    # for j in unhexlify(i):
    #     print(j, end='')
    enc = bytes(i ^ j for i, j in zip(flag, binascii.unhexlify(i)))
    # for i in range(23):
    #     assert enc[i] != flag[i], "leak detected"
    print(enc.hex())
    print(enc)


# def gen_enc_flag():
#     rand_bytes = urandom(23)
#     enc = bytes(i ^ j for i, j in zip(flag, rand_bytes))
#     for i in range(23):
#         assert enc[i] != flag[i], "leak detected"
#     return enc.hex()

while True:
    rand_bytes = urandom(23)
    for c in ciphertexts:
        enc = bytes(i ^ j for i, j in zip(binascii.unhexlify(c), rand_bytes))
        if b'CODEBY{' in enc:
            print(enc)


# print(gen_enc_flag())


# Список возможных символов в флаге
# alphabet = string.ascii_uppercase + string.ascii_lowercase + string.digits + "{}_"


# Словарь со всеми возможными комбинациями первых 7 символов флага
# flag_prefixes = ['CODEBY{' + c1 + c2 + c3 + c4 + c5 + c6 + c7 for c1 in alphabet for c2 in alphabet for c3 in alphabet for c4 in alphabet for c5 in alphabet for c6 in alphabet for c7 in alphabet]

# Функция для дешифровки ciphertext с использованием заданного ключа
# def decrypt(ciphertext, key):
#     decrypted = bytes(i ^ j for i, j in zip(bytes.fromhex(ciphertext), key))
#     return decrypted.decode()
#

#
# # Перебор всех возможных ключей (длиной 23 байта), для каждого ключа попытка дешифровки
# for key in range(2**184):
#     key_bytes = key.to_bytes(23, byteorder='big')
#     found_flag = False
#     # Перебор всех возможных комбинаций первых 7 символов флага
#     for prefix in flag_prefixes:
#         # Дешифровка ciphertext с использованием текущего ключа и префикса флага
#         decrypted = decrypt(ciphertexts[0], key_bytes[:7] + bytes(16))
#         # Если дешифрованный текст начинается с префикса флага, то флаг найден
#         if decrypted.startswith(prefix):
#             found_flag = True
#             print("Flag found:", decrypted)
#             break
#     if found_flag:
#         break
