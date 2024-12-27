#!/bin/bash

docker compose exec -T shard3 mongo --port 27020 <<EOF
rs.initiate(
    {
      _id : "shard3",
      members: [
       { _id : 2, host : "shard3:27020" }
      ]
    }
);
EOF