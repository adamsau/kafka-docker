FROM openjdk:8

VOLUME /tmp/kafka-logs

COPY ./kafka_2.13-2.7.0 /usr/local/kafka_2.13-2.7.0
WORKDIR /usr/local/kafka_2.13-2.7.0
EXPOSE 9092
CMD ["bin/kafka-server-start.sh", "config/server.properties"]
