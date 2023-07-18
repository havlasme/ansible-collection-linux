havlasme.linux.cron
===================

[![Apache-2.0 license][license-image]][license-link]

An [Ansible](https://www.ansible.com/) role to install cron daemon, and manage cronjobs on [Debian](https://www.debian.org/) or [Ubuntu](https://ubuntu.com/).

* install or update cron package via apt
* create, update, or delete cron job


Role Variables
--------------

```yaml
# the cron package state ('present', 'latest')
linux_cron_state: 'present'

# the cron job list
## - name: string
##   job: string
##   user: string | d('root')
##   minute: string | d(omit)
##   hour: string | d(omit)
##   day: string | d(omit)
##   month: string | d(omit)
##   weekday: string | d(omit)
##   cron_file: string | d(omit)
##   state: enum('present', 'absent') | d('present')
linux_cron_job: []
```


Example Playbook
----------------

```yaml
- hosts: 'all'

  tasks:
  - ansible.builtin.include_role:
      name: 'havlasme.linux.cron'
    vars:
      linux_cron_job:
      - name: 'my awesome job'
        job: '/usr/local/bin/my-awesome-job.sh'
```


License
-------

Apache-2.0


Author Information
------------------

Created by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: ../../LICENSE
