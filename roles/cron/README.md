Ansible Role - havlasme.linux.cron
==================================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to install the cron service and configure cron jobs on [Debian](https://www.debian.org/) and [Ubuntu](https://ubuntu.com/) running [systemd](https://systemd.io/).

- Install or Update the Cron Support via APT
- Create the Cron Directory Structure
- Create, Update, and Delete a Cron Job
- Start and Enable the Cron Service

Role Variables
--------------

Available variables are listed below, along with default values (see [`defaults/main.yml`](defaults/main.yml)):

```yaml
# cron package state ('present', 'latest') - 'absent' is not supported
# * 'present' ensures that the package is installed
# * 'latest' ensures that the latest version of the package is installed
linux_cron__state: 'present'
# should the cron service start at boot? (using systemd)
linux_cron__enabled: true

# cron job list
linux_cron__job: [ ]
## - name: string
##   job: string
##   user: string | d('root')
##   minute: string | d(omit)
##   hour: string | d(omit)
##   day: string | d(omit)
##   month: string | d(omit)
##   weekday: string | d(omit)
##   backup: bool | d(false)
##   cron_file: string | d(omit)
##   state: enum('present', 'absent') | d('present')
```

Example Playbook
----------------

```yaml
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.cron'
    vars:
      linux_cron__job:
      - name: 'my awesome job'
        job: '/usr/local/bin/my-awesome-job.sh'
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
