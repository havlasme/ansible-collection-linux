Ansible Role - havlasme.linux.motd
==================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to set the message of the day on [Debian](https://www.debian.org/) and [Ubuntu](https://www.ubuntu.com/) running [systemd](https://systemd.io/).

- Create, Update or Delete a Message of the Day Conf File

Role Variables
--------------

Available variables are listed below, along with default values (see [`defaults/main.yml`](defaults/main.yml)):

```yaml
# motd conf list
linux_motd: [ ]
## - dest: string
##   tmpl: string
##   user: string | d('root')
##   group: string | d('root')
##   mode: string | d('0755')
##   backup: boolean | d(false)
##   state: enum('present', 'absent') | d('present')
```

Example Playbook
----------------

```yaml
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.motd'
    vars:
      linux_motd: 
      - dest: '/etc/motd.j2'
        tmpl: 'etc/motd.j2'
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
