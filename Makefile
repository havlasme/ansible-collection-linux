GALAXY = @ansible-galaxy

.PHONY: build
build:
	$(GALAXY) collection build --output-path ./dist

.PHONY: clean
clean:
	rm -r ./dist

.PHONY: test
test:
	$(MAKE) -C roles/cron test
	$(MAKE) -C roles/group test
	$(MAKE) -C roles/hostname test
	$(MAKE) -C roles/locale test
	$(MAKE) -C roles/mount test
	$(MAKE) -C roles/sysctl test
	$(MAKE) -C roles/timezone test
	$(MAKE) -C roles/user test
