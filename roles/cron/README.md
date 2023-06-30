havlasme.linux.cron
===================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to install cron daemon, and manage cronjobs on [Debian](https://www.debian.org/).

Requirements
------------

None.

Role Variables
--------------

```yaml
# the cronjob list
linux_cron: []
# - name: string
#   job: string
#   user: string | d('root')
#   minute: string | d(omit)
#   hour: string | d(omit)
#   day: string | d(omit)
#   month: string | d(omit)
#   weekday: string | d(omit)
#   cron_file: string | d(omit)
#   state: enum('present', 'absent') | d('present')

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
      - name: "my awesome job"
        job: "/usr/local/bin/my-awesome-job.sh"
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
