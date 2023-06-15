#!/bin/bash

# kafka 디렉토리로 이동 후
bin/kafka-server-start.sh config/server.properties

# kafka server check
bin/kafka-broker-api-versions.sh --bootstrap-server localhost:9092
bin/kafka-topics.sh --bootstrap-server localhost:9092 --list