#!/usr/bin/env bash

packages=(
	csshint
	csslint
	eslint
	gulp
	jasmine
	eslint
	jsonlint
	jsxhint
	karma-cli
	localtunnel
	nodemon
	npm-check-updates
	pm2
	prettyjson
	sassdoc
	svgo
	tldr
	webpack
)

# source nvm before executing npm installation commands
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

npm install -g ${packages[@]}
