havlasme.linux.motd
===================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to set the motd on [Debian](https://www.debian.org/) or [Ubuntu](https://www.ubuntu.com/).

* set motd message


Role Variables
--------------

```yaml
# the motd conf file
linux_motd_file: '/etc/motd'
# the motd conf template
#linux_motd_template: 'etc/motd.j2'
```


Example Playbook
----------------

```yaml
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.motd'
    vars:
      linux_motd_template: 'etc/motd.j2'
```


License
-------

Apache-2.0


Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
