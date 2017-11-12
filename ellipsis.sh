#!/usr/bin/env bash

pkg.link() {
	fs.link_files common
}

pkg.install() {
	./scripts/nvm.sh
	./scripts/npm.sh
}
