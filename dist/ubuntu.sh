#!/bin/bash

#
# rvmのインストールに必要なパッケージのインストール
# curlのインストール
#
sudo apt-get install -y curl
sudo apt-get install build-essential bison libc6-dev ncurses-dev
sudo apt-get install libffi-dev
sudo apt-get install openssl libssl-dev libyaml-dev
sudo apt-get install libreadline6 libreadline6-dev
sudo apt-get install automake autoconf pkg-config
sudo apt-get install git-core subversion
sudo apt-get install zlib1g zlib1g-dev
sudo apt-get install sqlite3 libsqlite3-dev libgdbm-dev
sudo apt-get install libxml2-dev libxslt-dev

# rvmのインストール
if [ ! -e ~/.rvm ]; then
	curl -L https://get.rvm.io | bash
fi

# Activattion
source ~/.rvm/scripts/rvm

# rvmを最新バージョンへ更新
rvm get head
rvm reload

# ruby1.9.3のインストール
rvm install 1.9.3
rvm use 1.9.3 --default

# ruby gemsの設定
rvm rubygems current

# vim: set nu ts=2 autoindent : #

