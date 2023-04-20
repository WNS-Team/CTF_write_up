# resolved
from websocket import create_connection
import base64

url = 'ws://62.173.140.174:16011/ws'
ws = create_connection(url)
rec = str(ws.recv())
x = 0
a = True
while a:

    if '(' in rec:
        formula = base64.b64decode(str(rec[rec.find('e:')+3:rec.find('(')]))
    else:
        formula = base64.b64decode(str(rec[rec.find('e:') + 3:]))
    exec(formula)
    ws.send(str(x))
    rec = ws.recv()
    if 'FLAG' in rec:
        print(rec)
        a = False
ws.close()
