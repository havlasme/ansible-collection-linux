havlasme.linux.mount
====================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage system mount points.

Requirements
------------

None.

Role Variables
--------------

```yaml
# the mount point list
linux_mount: []
# - name: string
#   src: string
#   boot: boolean
#   fstype: string
#   opt: string
#   state: string
```

Dependencies
------------

[Ansible.Posix](https://docs.ansible.com/ansible/latest/collections/ansible/posix/index.html)

Example Playbook
----------------

```yaml
- hosts: all
  tasks:
  - import_role:
      name: havlasme.linux.mount
    vars:
      linux_mount:
      - name: "/tmp"
        fstype: "tmpfs"
        src: "tmpfs"
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
