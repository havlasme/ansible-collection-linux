.PHONY: test
test:
	$(MAKE) -C roles/group
	$(MAKE) -C roles/hostname
	$(MAKE) -C roles/locale
	$(MAKE) -C roles/sysctl
	$(MAKE) -C roles/timezone
	$(MAKE) -C roles/user

