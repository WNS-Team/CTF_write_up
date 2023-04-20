# resolved

def vigenere_decrypt(ciphertext, keyword):
    plaintext = ""
    keyword = keyword.upper()
    key_index = 0

    for i, char in enumerate(ciphertext):
        if char.isalpha():
            char_code = ord(char.upper()) - 65
            key_code = ord(keyword[key_index]) - 65
            plain_char = chr(((char_code - key_code) % 26) + 65)
            if char.islower():
                plain_char = plain_char.lower()
            plaintext += plain_char
            key_index = (key_index + 1) % len(keyword)
        else:
            plaintext += char

    return plaintext


ciphertext = "KRRRPR{memlbrjvuxxrfa}"
keyword = "idonotknow"
plaintext = vigenere_decrypt(ciphertext, keyword)
print(plaintext)
