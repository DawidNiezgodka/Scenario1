#!/bin/bash

PATTERN="org.apache.kafka:kafka_([0-9]*\.[0-9]*):jar:([0-9]*\.[0-9]*)"

DEP_LINE=$(grep -E "$PATTERN" dependencies.txt)

SCALA_VERSION=$(echo "$DEP_LINE" | awk -F: '{split($2, a, "_"); print a[2]}')
KAFKA_VERSION=$(echo "$DEP_LINE" | awk -F: '{print $4}')
ANSIBLE_VAR_ALL="./bench/ansible/group_vars/all"
FILE_TO_BE_TRANSFERRED="./scripts/kafka_scala_version_file"

if [ -n "$KAFKA_VERSION" ] && [ -n "$SCALA_VERSION" ]; then
    echo "Scala version: $SCALA_VERSION"
    echo "Kafka version: $KAFKA_VERSION"
    echo "kafka_ver: \"$KAFKA_VERSION\"" >> "$ANSIBLE_VAR_ALL"
    echo "scala_minor: \"$SCALA_VERSION\"" >> "$ANSIBLE_VAR_ALL"
    echo "scala_version: $SCALA_VERSION" > "$FILE_TO_BE_TRANSFERRED"
    echo "kafka_version: $KAFKA_VERSION" >> "$FILE_TO_BE_TRANSFERRED"
else
    echo "Scalas or Kafka version not found in dependencies.txt"
fi
