#!/bin/bash

./scripts/config-server-init.sh
sleep 5
./scripts/shard1-init.sh
sleep 5
./scripts/shard2-init.sh
sleep 5
./scripts/shard3-init.sh
sleep 5
./scripts/router-init.sh
