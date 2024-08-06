Ansible Role - havlasme.linux.locale
====================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to manage linux locales on [Debian](https://www.debian.org/) and [Ubuntu](https://ubuntu.com/) running [systemd](https://systemd.io/).

- Install or Update the Locales Support via APT
- Install or Uninstall a Linux Locale

Role Variables
--------------

```yaml
# the locale state ('present', 'latest') - 'absent' is not supported
# * 'present' ensures that the package is installed
# * 'latest' ensures that the latest version of the package is installed
linux_locale__state: 'present'

# the locale list
linux_locale: [ ]
## - name: string
##   state: enum('present', 'absent') | d('present')
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
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.locale'
    vars:
      linux_locale:
      - name: 'en_US.UTF-8'
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
