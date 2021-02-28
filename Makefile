SHELL=/bin/bash

gather:
	@cd gatherer && $(MAKE) all

deploy:
	@cd deployer && $(MAKE) all