#!/bin/bash

###
# считаем количество документов в бд
# docker compose exec -T <service-name> mongosh --port <mongo port> --quiet <<EOF
# docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
###

docker compose exec -T shard1 mongosh --port 27018 <<EOF
use somedb
db.helloDoc.countDocuments()
EOF

