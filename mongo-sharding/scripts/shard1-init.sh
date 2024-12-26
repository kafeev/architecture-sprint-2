#!/bin/bash

docker compose exec -T shard1 mongo --port 27018 <<EOF
rs.initiate(
    {
      _id : "shard1",
      members: [
       { _id : 0, host : "shard1:27018" }
      ]
    }
);
EOF