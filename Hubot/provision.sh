#!/bin/bash

apt-get -y update

dpkg -s npm &>/dev/null || {
	curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
	apt-get install -y nodejs
}

command -v hubot &>/dev/null || {
	npm i -g hubot coffee-script
}
