#!/bin/bash

echo "-----------------------------------"
echo "Проверка кол-ва документов:"
echo "-----------------------------------"

docker compose exec -T shard1 mongo --port 27018 <<EOF
use somedb
db.helloDoc.countDocuments({})
EOF

docker compose exec -T shard2 mongo --port 27019 <<EOF
use somedb
db.helloDoc.countDocuments({})
EOF
