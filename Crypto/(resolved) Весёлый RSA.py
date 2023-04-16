# resolved

import hashlib
import gmpy2
from factordb.factordb import FactorDB


def egcd(e, phi):
    x, y, u, v = 0, 1, 1, 0
    while e != 0:
        q, r = phi // e, phi % e
        m, n = x - u * q, y - v * q
        phi, e, x, y, u, v = e, r, u, v, m, n
        gcd = phi
    return gcd, x, y


def attack(n, e, c):
    f = FactorDB(n)
    # f.connect()
    if '200' not in f.connect():
        exit
    p, q = f.get_factor_list()
    phi = (p - 1) * (q - 1)
    # ---------------------------
    # d = int(gmpy2.invert(e, phi))
    # plaintext = int(pow(c, d, n))
    # -----------or--------------
    gcd, a, b = egcd(e, phi)
    d = a
    plaintext = pow(c, a, n)
    # ---------------------------
    return [plaintext, p, q, d]


e1, n1 = (5, 59911)  # 6 or 7721
C1 = 7721
d1 = attack(n1, e1, C1)[3]
# print(pow(C1, d1, n1), end=' ')
# print(pow(168, e1, n1))

e2, n2 = (7, 363241)  # 244800
C2 = 244800
d2 = attack(n2, e2, C2)[3]
# print(pow(C2, d2, n2), end=' ')
# print(pow(168, e2, n2))

e3, n3 = (13, 470369)  # 168
C3 = 76794
d3 = attack(n3, e3, C3)[3]
# print(pow(C3, d3, n3), end=' ')
# print(pow(168, e3, n3))

for i in range(200):
    if pow(i, e1, n1) == pow(C1, d1, n1) and pow(i, e2, n2) == pow(C2, d2, n2):
        m = hashlib.sha256()
        m.update(bytes(i))
        print('CODEBY{' + str(m.hexdigest()) + '}')

# CODEBY{80c3cd40fa35f9088b8741bd8be6153de05f661cfeeb4625ffbf5f4a6c3c02c4}
