# Онлайн-магазин

## Настройка сборки

```bash
#Установите нужные библиотеки
$ cd shops
$ pip install -r ./requirements.txt
$ python manage.py runserver

```
## Для работы будет необходимо скачать Redis:
[Redis](https://redis.io/)

```bash
$ cd redis-(Номер версии)
$ src/redis-server

```
## СУБД PostgreSQL(дамп базы - shop.sql)