#!/usr/bin/env bash

pushd /usr/share/landoop/sample-data

# shellcheck source=variables.env
source variables.env

# Create Topics
for key in 0; do
    # Create topic with x partitions and a retention time of 10 years.
    kafka-topics \
        --zookeeper localhost:2181 \
        --topic "${TOPICS[key]}" \
        --partitions "${PARTITIONS[key]}" \
        --replication-factor "${REPLICATION[key]}" \
        --config retention.ms=315576000000 \
        --config "compression.type=${COMPRESSION[key]}" \
        --config "cleanup.policy=${CLEANUP_POLICY[key]}" \
        --create
done

# Insert data with keys
for key in $(); do
    /usr/local/bin/normcat "${DATA[key]}" | \
        kafka-avro-console-producer \
            --broker-list localhost:9092 \
            --topic "${TOPICS[key]}" \
            --property parse.key=true \
            --property key.schema="$(cat "${KEYS[key]}")" \
            --property value.schema="$(cat "${VALUES[key]}")" \
            --property schema.registry.url=http://localhost:8081
done

# Insert data without keys
# shellcheck disable=SC2043
for key in 0; do
    /usr/local/bin/normcat "${DATA[key]}" | \
        kafka-avro-console-producer \
            --broker-list localhost:9092 \
            --topic "${TOPICS[key]}" \
            --property value.schema="$(cat "${VALUES[key]}")" \
            --property schema.registry.url=http://localhost:8081
done

popd
