#!/usr/bin/env bash

export NVM_DIR="$HOME/.nvm"

if [ ! -e "$HOME/.nvm/nvm.sh" ]; then
	echo "Installing nvm"

	#https://github.com/creationix/nvm#manual-install
	git clone https://github.com/creationix/nvm.git "$NVM_DIR"
	cd "$NVM_DIR"
else
	echo "nvm $(nvm current) is already installed, upgrading."

  # https://github.com/creationix/nvm#manual-upgrade
	cd "$NVM_DIR"
	git fetch origin
	git checkout .
fi

git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
. "$NVM_DIR/nvm.sh"

nvm install 'lts/*'
nvm install stable

nvm alias current 'lts/*'
nvm alias default current

nvm use default
