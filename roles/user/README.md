havlasme.linux.user
===================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage local users on [Debian](https://www.debian.org/).

Requirements
------------

None.

Role Variables
--------------

```yaml
# the user list
linux_user: []
# - name: string
#   comment: string | d(omit)
#   group: string | d(omit)
#   home: string | d(omit)
#   password: string | d(omit)
#   password_lock: boolean | d(omit)
#   shell: string | d(omit)
#   system: boolean | d(omit)
#   uid: int | d(omit)
#   state: enum('present', 'absent') | d('present')
#   authorized_key: [ ]
#   - key: string
#     key_options: string | d(omit)
#     comment: string | d(omit)
#     exclusive: boolean | d(omit)
#     state: enum('present', 'absent') | d('present')
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
