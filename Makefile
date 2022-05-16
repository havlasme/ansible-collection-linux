NAMESPACE = $(shell yq -r .namespace galaxy.yml)
ROLENAME = $(shell yq -r .name galaxy.yml)
ROLEVERSION = $(shell yq -r .version galaxy.yml)
DIST = ./dist
GALAXY = @ansible-galaxy

.PHONY: build
build:
	$(GALAXY) collection build --output-path "$(DIST)"

.PHONY: clean
clean:
	-rm --recursive "$(DIST)"

.PHONY: install
install:
	$(GALAXY) collection install "$(DIST)/$(NAMESPACE)-$(ROLENAME)-$(ROLEVERSION).tar.gz"

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
