SHELL=/bin/bash

all: checkos preflight getdocker

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

clean:
	@rm -rf docker docker.tar.gz

.PHONY: clean cool all checkos getdocker preflight
