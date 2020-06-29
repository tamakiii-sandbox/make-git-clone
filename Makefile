.PHONY: help install dependencies clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies \
	vendor/tamakiii-sandbox \
	vendor/tamakiii-sandbox/master-push \
	vendor/tamakiii-sandbox/make-git-clone \
	build

build:
	echo 'OK'

dependencies:
	type git > /dev/null

vendor/tamakiii-sandbox/master-push:
	-git clone https://github.com/tamakiii-sandbox/master-push.git $@

vendor/tamakiii-sandbox/make-git-clone:
	-git clone https://github.com/tamakiii-sandbox/make-git-clone.git $@

vendor/tamakiii-sandbox: vendor
	mkdir -p $@

vendor:
	mkdir -p $@

clean:
	rm -rf vendor

