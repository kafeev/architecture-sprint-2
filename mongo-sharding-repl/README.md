# pymongo-api

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
student@macros-pc:~/arch/architecture-sprint-2/mongo-sharding-repl$ ./scripts/check-shards.sh
-----------------------------------
Проверка кол-ва документов:
-----------------------------------
MongoDB shell version v4.4.29
connecting to: mongodb://127.0.0.1:27018/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("220cb303-cc35-48cc-894f-950c82341a81") }
MongoDB server version: 4.4.29
switched to db somedb
336
bye
MongoDB shell version v4.4.29
connecting to: mongodb://127.0.0.1:27019/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("d77a7661-9401-4f73-9480-3dadf2b89452") }
MongoDB server version: 4.4.29
switched to db somedb
318
bye
MongoDB shell version v4.4.29
connecting to: mongodb://127.0.0.1:27020/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("90e4d36e-ff17-4554-9ca4-7d54d4951bd2") }
MongoDB server version: 4.4.29
switched to db somedb
346
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