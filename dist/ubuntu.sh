#!/bin/bash

#
# rvmのインストールに必要なパッケージのインストール
# curlのインストール
#
sudo apt-get install -y curl

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
rvm use 1.9.3

# vim: set nu ts=2 autoindent : #

