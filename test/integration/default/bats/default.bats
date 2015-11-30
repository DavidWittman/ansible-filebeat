#!/usr/bin/env bats

@test "filebeat binary is in path" {
    command -v filebeat
}

@test "localhost:9200 is in filebeat.yml config" {
    grep "hosts: \['localhost:9200'\]" /etc/filebeat/filebeat.yml
}

@test "filebeat is running" {
    service filebeat status
}
