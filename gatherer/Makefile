SHELL=/bin/bash

cool:
	@echo "Hello from the Makefile"

test:
	@echo "Mock test done."

checkos:
	@scripts/checkos.sh

getdocker:
	@scripts/getdocker.sh

preflight:
	@scripts/preflight.sh

all:
	checkos preflight getdocker


.PHONY: clean cool all checkos getdocker preflight
