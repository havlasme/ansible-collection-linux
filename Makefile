GALAXY = @ansible-galaxy
NAMESPACE = $(shell yq -r .namespace galaxy.yml)
COLLECTION = $(shell yq -r .name galaxy.yml)
VERSION = $(shell yq -r .version galaxy.yml)
DIST = ./dist

.PHONY: build
build:
	$(GALAXY) collection build --output-path "$(DIST)"

.PHONY: install
install:
ifeq (, $(shell which yq))
	$(error "no yq. try running pip3 install yq")
else
	$(GALAXY) collection install "$(DIST)/$(NAMESPACE)-$(COLLECTION)-$(VERSION).tar.gz"
endif

.PHONY: publish
publish:
ifeq (, $(shell which yq))
	$(error "no yq. try running pip3 install yq")
else
	$(GALAXY) collection publish "$(DIST)/$(NAMESPACE)-$(COLLECTION)-$(VERSION).tar.gz" --token "$(GALAXY_API_TOKEN)"
endif

.PHONY: lint
lint:
	$(MAKE) -C roles/chrony lint
	$(MAKE) -C roles/cron lint
	$(MAKE) -C roles/group lint
	$(MAKE) -C roles/hostname lint
	$(MAKE) -C roles/locale lint
	$(MAKE) -C roles/motd lint
	$(MAKE) -C roles/mount lint
	$(MAKE) -C roles/sysctl lint
	$(MAKE) -C roles/timezone lint
	$(MAKE) -C roles/user lint

.PHONY: test
test:
	$(MAKE) -C roles/chrony test
	$(MAKE) -C roles/cron test
	$(MAKE) -C roles/group test
	$(MAKE) -C roles/locale test
	$(MAKE) -C roles/motd test
	$(MAKE) -C roles/mount test
	$(MAKE) -C roles/sysctl test
	$(MAKE) -C roles/timezone test
	$(MAKE) -C roles/user test

.PHONY: clean
clean:
	-rm --recursive "$(DIST)"
