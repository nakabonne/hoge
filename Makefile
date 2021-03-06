MAKEFLAGS = --no-builtin-rules --no-builtin-variables --always-make
.DEFAULT_GOAL := help

SHELL  = /usr/bin/env bash

rotate:
	sh scripts/rotate_alplog.sh

restart:
	sh scripts/restart.sh

alp:
	sudo alp -r --sum -f $(file)

pprof:
	go tool pprof /var/www/html/webapp/go/ http://localhost:6060/debug/pprof/profile

seelog:
	sudo journalctl -u systemd.go.service
