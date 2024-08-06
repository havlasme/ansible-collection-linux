Ansible Role - havlasme.linux.motd
==================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to set the message of the day on [Debian](https://www.debian.org/) and [Ubuntu](https://www.ubuntu.com/) running [systemd](https://systemd.io/).

- Set the Message of the Day (MOTD) Content
- Create, Update or Delete a Dynamic MOTD Script

Role Variables
--------------

```yaml
# the motd conf file
linux_motd__file: '/etc/motd'
# the motd conf template
#linux_motd__template: 'etc/motd.j2'

# the update-motd script list
linux_motd__update_motd: [ ]
## - dest: string
##   tmpl: string
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
      linux_motd__template: 'etc/motd.j2'
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
