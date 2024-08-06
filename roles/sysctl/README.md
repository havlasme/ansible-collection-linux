Ansible Role - havlasme.linux.sysctl
====================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to configure kernel tunable variables via sysctl on [Debian](https://www.debian.org/) and [Ubuntu](https://ubuntu.com/) running [systemd](https://systemd.io/).

- Install or Update the Sysctl Support via APT
- Set, Update, or Unset a Kernel Tunable Variable

Role Variables
--------------

```yaml
# the sysctl package state ('present', 'latest') - 'absent' is not supported
# * 'present' ensures that the package is installed
# * 'latest' ensures that the latest version of the package is installed
linux_sysctl__state: 'present'

# the kernel tunable variable list
linux_sysctl: [ ]
## - sysctl_file: string | d(omit)
##   tunable: dict[]
##   - name: string
##     value: string | d(omit)
##     reload: boolean | d(true)
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
      name: 'havlasme.linux.sysctl'
    vars:
      linux_sysctl:
      - sysctl_file: '/etc/sysctl.d/40-swap-tune.conf'
        tunable:
        - name: 'vm.swappiness'
          value: '10'
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
