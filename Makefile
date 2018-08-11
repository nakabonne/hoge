MAKEFLAGS = --no-builtin-rules --no-builtin-variables --always-make
.DEFAULT_GOAL := help

SHELL  = /usr/bin/env bash

rotate:
	sh scripts/rotate_alplog.sh

restart:
	sh scripts/restart.sh

alp:
	sudo alp -r --sum -f $(file)
