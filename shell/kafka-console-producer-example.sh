#!/bin/bash

# at kafka directory

# produce message in specific topic without message key example
bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic hello.kafka

# produce message in specific topic with message key example
bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic hello.kafka --property "parse.key=true" --property "key.separator=:"


