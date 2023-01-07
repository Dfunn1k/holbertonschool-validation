#!/bin/bash
apt-get update
sudo apt-get install -y make wget zip
npm install markdownlint-cli -g -y
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz
tar -xvf hugo_extended_0.109.0_Linux-64bit.tar.gz hugo
mv hugo /usr/local/bin/hugo
make build
