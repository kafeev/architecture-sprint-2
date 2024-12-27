# pymongo-api

## Ссылка на схемы
https://drive.google.com/file/d/1AvOzK1408ehPQKu5CRyDLLrcQVAVnyV6/view?usp=sharing

## 0. Как запустить все сервисы (pymongo-api, configSrv, redis, shard1, shard2, shard3, router)

Запускаем mongodb и приложение

```shell
docker compose up -d
```

## 1. Запускаем скрипт для настройки реплик и шардирования

```shell
./scripts/start.sh
```

## 2. Как проверить, что шардирование работает:

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
## 3. Проверка работоспособности API

```
>curl -X 'GET' 'http://localhost:8080/helloDoc/count' -H 'accept: application/json' | jq
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    54  100    54    0     0   4298      0 --:--:-- --:--:-- --:--:--  4500
{
  "status": "OK",
  "mongo_db": "somedb",
  "items_count": 1000
}
```
### Чтобы проверить работы кеша, необходимо два раза запустить команду
```
curl -X 'GET' 'http://localhost:8080/helloDoc/users' -H 'accept: application/json' | jq
```
первый раз будет задержка в ответе - так как запрос будет из БД
второй раз ответ вернется быстро - так как уже из кеша


## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs
