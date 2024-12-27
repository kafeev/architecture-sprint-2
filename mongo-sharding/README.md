# pymongo-api

## Ссылка на схемы
https://drive.google.com/file/d/1AvOzK1408ehPQKu5CRyDLLrcQVAVnyV6/view?usp=sharing

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Запускаем скрипт для настройки и проверки рабоспособности

```shell
./scripts/start.sh
```

## Как проверить

запустить скрипт
```
./scripts/check-shards.sh
```
после отработки скрипта должны увидеть примерно следующее
```shell
> ./scripts/check-shards.sh
-----------------------------------
Проверка кол-ва документов:
-----------------------------------
MongoDB shell version v4.4.29
connecting to: mongodb://127.0.0.1:27018/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("a48d35f3-b767-4dc3-9181-574c08ce8dd5") }
MongoDB server version: 4.4.29
switched to db somedb
508
bye
MongoDB shell version v4.4.29
connecting to: mongodb://127.0.0.1:27019/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("cfe918ec-9717-41a3-801b-b3909640fa2e") }
MongoDB server version: 4.4.29
switched to db somedb
492
bye
>
```



### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs