Ansible Collection - havlasme.linux
===================================

[![CI][gitlabci-image]][gitlabci-link]
[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) collection of linux management content that supports [Debian](https://www.debian.org/) and [Ubuntu](https://ubuntu.com/) running [systemd](https://systemd.io/).

### Included Content

- `havlasme.linux.chrony` ([documentation](/roles/chrony/README.md))  
- `havlasme.linux.cron` ([documentation](/roles/cron/README.md))  
- `havlasme.linux.group` ([documentation](/roles/group/README.md))
- `havlasme.linux.hostname` ([documentation](/roles/hostname/README.md))
- `havlasme.linux.locale` ([documentation](/roles/locale/README.md))
- `havlasme.linux.motd` ([documentation](/roles/motd/README.md))
- `havlasme.linux.mount` ([documentation](/roles/mount/README.md))
- `havlasme.linux.sysctl` ([documentation](/roles/sysctl/README.md))
- `havlasme.linux.timezone` ([documentation](/roles/timezone/README.md))
- `havlasme.linux.user` ([documentation](/roles/user/README.md))

Installation
------------

```shell title="ansible-galaxy"
ansible-galaxy collection install havlasme.linux
```

```yaml title="requirements.yml"
---
collections:
- name: 'havlasme.linux'
...
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

### Setup Development Environment

```shell title="via DNF"
sudo dnf install ansible jq yq python3-jmespath
```

```shell title="via APT"
sudo apt install ansible jq yq python3-jmespath
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: LICENSE

[gitlabci-image]: https://img.shields.io/gitlab/pipeline-status/havlas.me/ansible-collection-linux?style=flat-square
[gitlabci-link]: https://gitlab.com/havlas.me/ansible-collection-linux/-/pipelines
