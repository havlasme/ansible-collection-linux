Ansible Role - havlasme.linux.chrony
====================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to install and configure the chrony service on [Debian](https://www.debian.org/) and [Ubuntu](https://ubuntu.com/) running [systemd](https://systemd.io/).

- Install, Update, or Uninstall the Chrony via APT
- Create the Chrony Directory Structure
- Create, Update, and Delete a Chrony Conf File
- Create and Update the Chrony Service Environment File
- Start/Stop and Enable/Disable the Chrony Service

Role Variables
--------------

Available variables are listed below, along with default values (see [`defaults/main.yml`](defaults/main.yml)):

```yaml
# chrony package state ('present', 'latest', 'absent')
# * 'present' ensures that the package is installed
# * 'latest' ensures that the latest version of the package is installed
# * 'absent' ensures that the package is not installed
chrony__state: 'present'
# should the chrony service start at boot? (using systemd)
chrony__enabled: '{{ chrony__state != "absent" }}'
# can ansible restart the chrony service? (using systemd)
chrony__ansible_restart: true

# chrony conf list
#! template lookup is done by the `havlasme.ansible.template` plugin
chrony__conf:
## - dest: string
##   template: string | d(chrony__conf_template)
##   user: string | d('root')
##   group: string | d('root')
##   mode: string | d('0755')
##   backup: boolean | d(false)
##   state: enum('present', 'absent', 'directory') | d('present')
- { dest: '/etc/chrony', state: 'directory' }
- dest: '/etc/chrony/chrony.conf'
  template: 'etc/chrony/chrony.conf.j2'
# chrony conf default template
chrony__conf_template: '_content_.j2'

# chrony service environment template
# this template will be deployed at `/etc/default/chrony` which is referenced by the systemd service
#chrony__env_template: string | d(omit)
```

### `etc/chrony/chrony.conf`

```yaml
# chrony ntp pool list
# this variable is referenced by the default `etc/chrony/chrony.conf.j2` template
chrony__pool: |-
  pool pool.ntp.org iburst
# should the chrony periodically synchronize the hardware clock?
# this variable is referenced by the default `etc/chrony/chrony.conf.j2` template
chrony__rtcsync: true
```

```yaml
chrony__conf:
- dest: '/etc/chrony/chrony.conf'
  template: 'etc/chrony/chrony.conf.j2'
```

Example Playbook
----------------

```yaml
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.chrony'
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
