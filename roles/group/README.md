havlasme.linux.group
====================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage local groups on [Debian](https://www.debian.org/) or [Ubuntu](https://ubuntu.com/).

* create, update, or delete local group

Role Variables
--------------

```yaml
# the local group list
## - name: string
##   gid: int | d(omit)
##   system: boolean | d(omit)
##   state: enum('present', 'absent') | d('present')
linux_group: []
```


Example Playbook
----------------

```yaml
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.group'
    vars:
      linux_group:
      - name: 'my-awesome-group'
```


License
-------

Apache-2.0


Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
