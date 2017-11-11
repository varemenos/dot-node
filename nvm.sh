#!/usr/bin/env bash

cd ~/.nvm

if [ ! -e "$HOME/.nvm/nvm.sh" ]; then
	echo "Installing nvm"

	git clone https://github.com/creationix/nvm.git ~/.nvm
	git checkout `git describe --abbrev=0 --tags`
else
	printf "nvm $(nvm current) is already installed, upgrading."

  # https://github.com/creationix/nvm#manual-upgrade
	git fetch origin
	git checkout .
	git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
fi

. ~/.nvm/nvm.sh

nvm install 'lts/*'
nvm install stable

nvm alias current 'lts/*'
nvm alias default current

nvm use default
