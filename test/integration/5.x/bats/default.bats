#!/usr/bin/env bats

@test "filebeat script is in path" {
    command -v filebeat.sh
}

@test "/tmp/filebeat is in filebeat.yml config" {
    grep "file: {filename: filebeat, path: /tmp/filebeat}" /etc/filebeat/filebeat.yml
}

@test "filebeat is running" {
    service filebeat status
}

@test "ca certificate does not exist" {
    [ ! -f /etc/filebeat/ca.crt ]
}
