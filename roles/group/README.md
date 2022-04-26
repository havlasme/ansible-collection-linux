havlasme.linux.group
====================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage system groups.

Requirements
------------

None.

Role Variables
--------------

```yaml
# the group list
linux_group: []
# - name: string
#   gid: integer | d(omit)
#   system: boolean | d(omit)
#   state: enum('absent', 'present') | d('present')

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
      name: havlasme.linux.group
    vars:
      linux_user:
      - name: "root"
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
