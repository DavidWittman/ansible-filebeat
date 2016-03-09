Ansible Filebeat role
=========

[![Ansible Galaxy](https://img.shields.io/badge/galaxy-DavidWittman.filebeat-blue.svg?style=flat)](https://galaxy.ansible.com/detail#/role/6293)

Installs Elastic's Filebeat for forwarding logs.

Role Variables
--------------

 - `filebeat_config` - YAML representation of your filebeat config. This is templated directly into the configuration file as YAML. See the [example configuration](https://github.com/elastic/filebeat/blob/master/etc/filebeat.yml) for an exhaustive list of configuration options. Defaults to:

  ``` yaml
  filebeat_config:
    filebeat:
      prospectors:
        - paths:
            - /var/log/messages
            - /var/log/*.log
          input_type: log
    output:
      file:
        path: /tmp/filebeat
        filename: filebeat
    logging:
      to_syslog: true
      level: error
  ```

Common Configurations
---------------------

Connecting to Elasticsearch:

  ``` yaml
  filebeat_config:
    filebeat:
      prospectors:
        - paths:
            - /var/log/messages
            - /var/log/*.log
          input_type: log
    output:
      elasticsearch:
        hosts:
          - "http://localhost:9200"
        username: "bob"
        password: "12345"
    logging:
      to_syslog: true
      level: error
  ```

License
-------

BSD

Author Information
------------------

David Wittman
