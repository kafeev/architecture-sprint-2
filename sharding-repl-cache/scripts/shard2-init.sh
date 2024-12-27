#!/bin/bash

docker compose exec -T shard2 mongo --port 27019 <<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
       { _id : 1, host : "shard2:27019" }
      ]
    }
);
EOF