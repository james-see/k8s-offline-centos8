SHELL=/bin/bash

.PHONY: gather deploy all clean

## shows all targets
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

## Run the Makefile under gatherer folder and runs all targets, checkos, preflight, and getdocker
gather:
	@cd gatherer && $(MAKE) all

## Run the Makefile under deployer folder and runs all targets, checkos, preflight, and deploydocker
deploy:
	@cd deployer && $(MAKE) all

clean:
	@cd gatherer && $(MAKE) -C clean
