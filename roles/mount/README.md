Ansible Role - havlasme.linux.mount
===================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage linux mounts on [Debian](https://www.debian.org/) and [Ubuntu](https://ubuntu.com/) running [systemd](https://systemd.io/).

- Create, Update, or Delete a Mount

Role Variables
--------------

```yaml
# the mount list
linux_mount: [ ]
## - name: string
##   src: string | d(omit)
##   boot: boolean | d(omit)
##   fstype: string | d(omit)
##   opts: string | d(omit)
##   state: enum('present', 'absent', 'mounted', 'umnounted', 'remounted') | d('mounted')
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
      name: 'havlasme.linux.mount'
    vars:
      linux_mount:
      - name: '/tmp'
        src: 'tmpfs'
        fstype: 'tmpfs'
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
