havlasme.linux.hostname
=======================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to set the hostname on [Debian](https://www.debian.org/).

Requirements
------------

None.

Role Variables
--------------

```yaml
# the hostname
#linux_hostname: "hostname"
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
      name: havlasme.linux.hostname
    vars:
      linux_hostname: "my-awesome-host"
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
