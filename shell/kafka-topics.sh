#!/bin/bash

# at kafka directory

# topic create without option example
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --topic hello.kafka

# topic create with option example
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --partitions 10 --replication-factor 1 -topic hello.kafka2 --config retention.ms=172800000

# specific topic info check
bin/kafka-topics.sh --bootstrap-server localhost:9092 --topic hello.kafka --describe

# specific topic increase partition example
bin/kafka-topics.sh --bootstrap-server localhost:9092 --topic hello.kafka --alter --partitions 4
