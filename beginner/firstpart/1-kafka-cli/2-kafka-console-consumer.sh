# Replace "kafka-console-consumer.sh" 
# by "kafka-console-consumer" or "kafka-console-consumer.bat" based on your system # (or bin/kafka-console-consumer.sh or bin\windows\kafka-console-consumer.bat if you didn't setup PATH / Environment variables)

kafka-console-consumer.sh 

# consuming
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic
# You won't see anything, until you send something from producer.

# other terminal
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic

# consuming from beginning
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --from-beginning
# this is not by default to read from beginning, because it may have a tons of messages.
# You will notice the order of the message doesn't match the order of the producer.
# This is because the message is sent to a different partitions. The message within a partition is ordered.


# display key, values and timestamp in consumer
kafka-console-consumer --bootstrap-server localhost:9092 --topic first_topic --formatter kafka.tools.DefaultMessageFormatter --property print.timestamp=true --property print.key=true --property print.value=true --from-beginning