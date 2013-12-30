#!/bin/bash

#
# rvmのインストールに必要なパッケージのインストール
# curlのインストール
#
sudo yum install -y curl

# rvmのインストール
if [ ! -e ~/.rvm ]; then
	curl -L https://get.rvm.io | bash
fi

# pathの設定
if [ ! -e /usr/local/rvm ]; then
	# Activattion
	source /usr/local/rvm/bin
elif
	# Activattion
	source ~/.rvm/scripts/rvm
fi

# rvmを最新バージョンへ更新
rvm get head
rvm reload

# ruby1.9.3のインストール
rvm install 1.9.3
rvm --default use 1.9.3

# ruby gemsの設定
rvm rubygems current

# Metasploitの取得
git clone https://github.com/rapid7/metasploit-framework
pushd metasploit-framework
	bundle install
popd

# vim: set nu ts=2 autoindent : #

