.PHONY: help install dependencies clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies \
	vendor/tamakiii-sandbox/master-push \
	vendor/tamakiii-sandbox/make-git-clone \
	build

build:
	echo 'OK'

dependencies:
	type git > /dev/null

vendor/tamakiii-sandbox/master-push: vendor/tamakiii-sandbox
	-git clone https://github.com/tamakiii-sandbox/master-push.git $@

vendor/tamakiii-sandbox/make-git-clone: vendor/tamakiii-sandbox
	-git clone https://github.com/tamakiii-sandbox/make-git-clone.git $@

vendor/tamakiii-sandbox: vendor
	-mkdir $@

vendor:
	-mkdir $@

clean:
	rm -rf vendor

