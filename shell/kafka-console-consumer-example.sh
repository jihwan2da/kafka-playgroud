#!/bin/bash

# at kafka directory

# consume all messages in specific topic from beginning without message key and no commit
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic hello.kafka --from-beginning

# consume all messages in specific topic from beginning with message key and no commit
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic hello.kafka --property print.key=true --property key.seperator="-" --from-beginning

# consume limited messages in specific topic from beginning without message key and no commit
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic hello.kafka --from-beginning --max-messages 2

# consume all messages in specific partition in topic from beginning without message key and no commit
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic hello.kafka --partition 2 --from-beginning

# consume all messages in specific topic from beginning without message key by consumer group (commit)
bin/kafka-console-consumer.sh --bootstrap-server  localhost:9092 --topic hello.kafka --group hello-group --from-beginning