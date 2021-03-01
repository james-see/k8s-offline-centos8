SHELL=/bin/bash

.PHONY: clean cool all checkos getdocker preflight test 

## loads all the available targets and info about them
help:
	@printf "\nAvailable targets\n\n"
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "%-15s %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)
	@printf "\n"
## checks the operating system to make sure it is CentOS 8
checkos:
	@scripts/checkos.sh

## makes sure yum-utils and epel-release are installs
preflight:
	@scripts/preflight.sh

## gets all of the things needed local and into docker.tar.gz at home directory
getdocker:
	@scripts/getdocker.sh

## wipes the created docker folder
clean:
	@rm -rf $${HOME}/docker
	@rm -f docker.tar.gz
	@rm -f $${HOME}/docker.tar.gz

## test like hello world to show functionality / silliness
cool:
	@echo "Hello from the Makefile"

## mocked in for when we do have tests
test:
	@echo "Mock test done."

## load all which is checkos, preflight, and getdocker
all: checkos preflight getdocker