Ansible Filebeat role
=========

[![Ansible Galaxy](https://img.shields.io/badge/galaxy-DavidWittman.filebeat-blue.svg?style=flat)](https://galaxy.ansible.com/detail#/role/6293)

Installs Elastic's Filebeat for forwarding logs.

Role Variables
--------------

 - `filebeat_config` - YAML representation of your filebeat config. This is templated directly into the configuration file as YAML. See the example configuration for an exhaustive list of configuration options. Defaults to:

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
          - localhost:9200
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
