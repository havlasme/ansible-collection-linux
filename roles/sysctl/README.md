havlasme.linux.sysctl
=====================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage sysctl configuration.

Requirements
------------

None.

Role Variables
--------------

```yaml
# the sysctl configuration
linux_sysctl: [ ]
# - name: string
#   reload: boolean
#   sysctl_file: string
#   value: string
#   state: string
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
      name: havlasme.linux.sysctl
    vars:
      linux_sysctl:
      - name: "vm.swappiness"
        sysctl_file: "/etc/sysctl.d/40-vm-swappiness.conf"
        value: "10"
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
