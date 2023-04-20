import hashlib
from email_validator import validate_email, EmailNotValidError
from email_validate import validate, validate_or_fail

mail_mas = []

with open('mail') as file:
    for line in file.readlines():
        mail_mas.append(bytes(line[:-1], 'utf-8'))

hash = '0f6989e3f07364b38a89b96b6c856950'
mail = b'cocaxo9932'
hash_object = hashlib.md5(mail)

for i in mail_mas:
    # print(mail + i)
    hash_object = hashlib.md5(mail + i)
    if hash_object == hash:
        print(hash_object.hexdigest())

# with open('email.txt') as file:
#     for line in file.readlines():
#         mail = validate(
#             email_address=line[:-1],
#             check_format=True,
#             check_blacklist=True,
#             check_dns=True,
#             dns_timeout=10,
#             check_smtp=False,
#             smtp_debug=False)
#         if mail == 'True':
#             print(line, end='')

# import requests
#
# email_address = str(input('Email: '))
# response = requests.get(
#     "https://isitarealemail.com/api/email/validate",
#     params={'email': email_address})
#
# status = response.json()['status']
# if status == "valid":
#     print("email is valid")
# elif status == "invalid":
#     print("email is invalid")
# else:
#     print("email was unknown")

from validate_email import validate_email

is_valid = validate_email('example@example.com',verify=True)
