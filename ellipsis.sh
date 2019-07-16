#!/usr/bin/env bash

pkg.link() {
	stow common -t ~
}

pkg.install() {
	./scripts/nvm.sh
	./scripts/npm.sh
}
