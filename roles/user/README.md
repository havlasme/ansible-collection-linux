havlasme.linux.user
===================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage system users, and authorized keys.

Requirements
------------

None.

Role Variables
--------------

```yaml
# the user list
linux_user: [ ]
# - name: string
#   comment: string
#   home: string
#   password: string
#   shell: string
#   system: boolean
#   uid: integer
#   state: string
#   authorized_key: [ ]
#   - key: string
#     key_options: string
#     comment: string
#     exclusive: boolean
#     user: string
#     state: string
```

Dependencies
------------

[Ansible.Posix](https://docs.ansible.com/ansible/latest/collections/ansible/posix/index.html)

```bash
ansible-galaxy collection install ansible.posix
```

Example Playbook
----------------

```yaml
- hosts: all
  tasks:
  - import_role:
      name: havlasme.linux.user
    vars:
      linux_user:
      - name: root
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
