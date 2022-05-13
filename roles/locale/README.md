havlasme.linux.locale
=====================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage system locales.

Requirements
------------

None.

Role Variables
--------------

```yaml
# the system locale list
linux_locale: []
# - name: string
#   state: enum('present', 'absent') | d('present')
```

Dependencies
------------

[Community.General](https://docs.ansible.com/ansible/latest/collections/community/general/index.html)

```bash
ansible-galaxy collection install community.general
```

Example Playbook
----------------

```yaml
- hosts: all
  tasks:
  - import_role:
      name: havlasme.linux.locale
    vars:
      linux_locale:
      - name: "en_US.UTF-8"
```

License
-------

Apache-2.0

Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).

[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
