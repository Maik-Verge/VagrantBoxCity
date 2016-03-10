#!/bin/bash

#NPMLOC=$(npm config get prefix)
#USR="/usr"

apt-get -y update
apt-get install -qq curl git-core ack-grep software-properties-common build-essential cachefilesd

#command -v npm &>/dev/null || {
#	curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
#	apt-get install -y nodejs
#}

#if [["echo $NPMLOC" == "$USR" ]]; then
#	mkdir ~/.npm-global
#	npm config set prefix '~/.npm-global'
#	echo "export PATH=~/.npm-global/bin:$PATH" >> .bashrc
#	source ~/.bashrc
#fi
