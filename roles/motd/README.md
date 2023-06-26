havlasme.linux.motd
===================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to set the motd on [Debian](https://www.debian.org/).

Requirements
------------

None.

Role Variables
--------------

```yaml
# the motd
linux_motd: "/etc/motd"
# the motd template
#linux_motd_tmpl: ""
```

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: all
  tasks:
  - import_role:
      name: havlasme.linux.motd
    vars:
      linux_motd_tmpl: "motd.j2"
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
