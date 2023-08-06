include project.mk

## init	:	Initialize the project.
.PHONY: init
init:
	@echo "Preparing $(PROJECT_NAME)..."
	cp project.mk default.env

## start	:	Re-build lando.
.PHONY: rebuild
rebuild:
	@echo "Re-build containers for $(PROJECT_NAME) ..."
	@lando rebuild

## start	:	Start lando without updating.
.PHONY: start
start:
	@echo "Starting containers for $(PROJECT_NAME) from where you left off..."
	@lando start

## stop	:	Stop lando.
.PHONY: stop
stop:
	@echo "Stopping containers for $(PROJECT_NAME)..."
	@lando stop

## shell	:	Access `php` container via shell.
.PHONY: shell
shell:
	@lando ssh
