Ansible Role - havlasme.linux.user
==================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage linux system users and associated authorized keys on [Debian](https://www.debian.org/) and [Ubuntu](https://ubuntu.com/) running [systemd](https://systemd.io/).

- Create, Update, or Delete a Linux User
- Create, Update, or Delete a User-Associated Authorized Key

Role Variables
--------------

Available variables are listed below, along with default values (see [`defaults/main.yml`](defaults/main.yml)):

```yaml
# linux user list
linux_user: [ ]
## - name: string
##   comment: string | d(omit)
##   home: string | d(omit)
##   create_home: boolean | d(omit)
##   local: boolean | d(omit)
##   password: string | d(omit)
##   password_lock: boolean | d(omit)
##   shell: string | d(omit)
##   system: boolean | d(omit)
##   uid: int | d(omit)
##   umask: string | d(omit)
##   group: string | d(omit)
##   groups: string[] | d(omit)
##   append: boolean | d(omit)
##   state: enum('present', 'absent') | d('present')
##   authorized_key: dict[] | d(omit)
##   - key: string
##     key_options: string | d(omit)
##     comment: string | d(omit)
##     exclusive: boolean | d(omit)
##     state: enum('present', 'absent') | d('present')
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
      name: 'havlasme.linux.user'
    vars:
      linux_user:
      - name: 'root'
        password_lock: true
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
