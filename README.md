Ansible Collection - havlasme.linux
===================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) collection of linux-related roles, plugins, and modules:

- [havlasme.linux.cron](/roles/cron/README.md)
- [havlasme.linux.group](/roles/group/README.md)
- [havlasme.linux.hostname](/roles/hostname/README.md)
- [havlasme.linux.locale](/roles/locale/README.md)
- [havlasme.linux.motd](/roles/motd/README.md)
- [havlasme.linux.mount](/roles/mount/README.md)
- [havlasme.linux.sysctl](/roles/sysctl/README.md)
- [havlasme.linux.timezone](/roles/timezone/README.md)
- [havlasme.linux.user](/roles/user/README.md)


Installation
------------

```shell
ansible-galaxy collection install havlasme.linux
```

```shell title="requirements.yml"
---
collections:
- name: havlasme.linux
```


Development
-----------

```shell
make build
```

```shell title="ansible-lint"
make lint
```

```shell title="molecule"
make test
```


License
-------

Apache-2.0


Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: LICENSE
