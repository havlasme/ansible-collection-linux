havlasme.linux.group
====================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage system cron jobs.

Requirements
------------

None.

Role Variables
--------------

```yaml
# the cron list
linux_cron: [ ]
# - name: string
#   job: string
#   user: string
#   day: string
#   hour: string
#   minute: string
#   month: string
#   weekday: string
#   cron_file: string
#   state: string
```

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: all
  tasks:
  - import_role:
      name: havlasme.linux.cron
    vars:
      linux_cron:
      - name: "some job"
        job: "/usr/local/bin/some-job.sh"
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
