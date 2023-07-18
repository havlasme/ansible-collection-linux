havlasme.linux.sysctl
=====================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage sysctl configuration on [Debian](https://www.debian.org/) or [Ubuntu](https://ubuntu.com/).

* install or update sysctl package via apt
* set, update, or unset sysctl variable


Role Variables
--------------

```yaml
# the sysctl package state ('present', 'latest')
linux_sysctl_state: 'present'

# the sysctl list
## - name: string
##   value: string | d(omit)
##   reload: boolean | d(true)
##   sysctl_file: string | d(omit)
##   state: enum('present', 'absent') | d('present')
linux_sysctl: []
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
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.sysctl'
    vars:
      linux_sysctl:
      - name: 'vm.swappiness'
        value: '10'
```


License
-------

Apache-2.0


Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
