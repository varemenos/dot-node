#!/usr/bin/env bash

pkg.link() {
	fs.link_files common
}

pkg.install() {
	source nvm.sh
	source npm.sh
}
