#!/usr/bin/env bash

packages=(
	babel-cli
	autoprefixer
	bower
	browser-sync
	browserify
	clean-css
	coffeelint
	csshint
	csslint
	eslint
	gulp
	grunt-cli
	grunt-generate-configs
	grunt-init
	jasmine
	eslint
	jsonlint
	jsxhint
	karma-cli
	less
	load-grunt-configs
	localtunnel
	nodemon
	npm-check-updates
	parker
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
