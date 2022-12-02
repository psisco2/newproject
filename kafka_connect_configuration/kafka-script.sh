#!/bin/bash

sleep 15.0s

usr/bin/kafka-topics --bootstrap-server "$BOOTSTRAP_SERVER" --topic "$KAFKA_TOPIC" --create --partitions 1 --replication-factor 1

usr/bin/kafka-console-producer --bootstrap-server "$BOOTSTRAP_SERVER" --topic "$KAFKA_TOPIC"
{"name":"jhon","age":30}