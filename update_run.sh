#!/bin/sh

# Docker workaround: Remove check for KAFKA_ZOOKEEPER_CONNECT parameter
# sed -i '/KAFKA_ZOOKEEPER_CONNECT/d' /etc/confluent/docker/configure

# Docker workaround: Ignore cub zk-ready
# sed -i 's/cub zk-ready/echo ignore zk-ready/' /etc/confluent/docker/ensure

# KRaft required step: Format the storage directory with a new cluster ID
# echo "kafka-storage format --ignore-formatted --cluster-id=$(kafka-storage random-uuid) -c /etc/kafka/kafka.properties" >> /etc/confluent/docker/ensure

sleep 35.0s

echo -e 'Creating kafka topics'

usr/bin/kafka-topics --bootstrap-server "$BOOTSTRAP_SERVER" --topic "$KAFKA_TOPIC" --create --partitions 1 --replication-factor 1

echo -e 'Creating kafka topics'

usr/bin/kafka-console-producer --bootstrap-server "$BOOTSTRAP_SERVER" --topic "$KAFKA_TOPIC"
{"name":"jhon","age":30}

usr/bin/kafka-topics --bootstrap-server "$BOOTSTRAP_SERVER" --list