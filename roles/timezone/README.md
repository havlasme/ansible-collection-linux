havlasme.linux.timezone
=======================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to set the timezone on [Debian](https://www.debian.org/) or [Ubuntu](https://ubuntu.com/).

* set timezone


Role Variables
--------------

```yaml
# the timezone
#linux_timezone: 'Etc/UTC'
# set to UTC, to keep hardware clock in UTC timezone
# set to local, to keep hardware clock in local timezone
#linux_timezone_hwclock: 'UTC'
```


Dependencies
------------

[Community.General](https://docs.ansible.com/ansible/latest/collections/community/general/index.html)

```bash
ansible-galaxy collection install community.general
```


Example Playbook
----------------

```yaml
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.timezone'
    vars:
      linux_timezone: 'Europe/Bratislava'
```


License
-------

Apache-2.0


Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
