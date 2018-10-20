#!/usr/bin/env bats

@test "filebeat binary has been removed" {
    [ ! -f /usr/bin/filebeat ]
}

@test "filebeat is not running" {
    run pgrep filebeat
    [ "$status" -ne 0 ]
}
