havlasme.linux.sysctl
=====================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage sysctl configuration on [Debian](https://www.debian.org/).

Requirements
------------

None.

Role Variables
--------------

```yaml
# the sysctl list
linux_sysctl: []
# - name: string
#   value: string | d(omit)
#   reload: boolean | d('yes')
#   sysctl_file: string | d(omit)
#   state: enum('present', 'absent') | d('present')
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
