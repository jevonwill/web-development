#!/bin/sh
#We shall accomplish the following objectives.
#Git clone the Bootstrap repo. install the required dependecies. compile the SCSS.
#Authored by Jevon Williams
#4/24/2021


#Setting the root directory var to git repo provided by the user.
rootdir=/root/bootstrap

#Clone bootstrap repo
mkdir $rootdir
cd $rootdir
git clone https://github.com/twbs/bootstrap.git

#Install node/npm
cd /root/
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - 
if apt install -y nodejs; then
	cd $rootdir/bootstrap
	sudo npm install
else
	sudo apt install -y nodejs 
	cd $rootdir/bootstrap
	sudo npm install

fi

#Install Ruby and compile scss
if apt install -y ruby-full; then
	cd $rootdir/bootstrap
	gem install bundler -y
	bundle install -y
	npm run dist
else
	sudo apt install ruby-full -y
	cd $rootdir/bootstrap
	gem install bundler -y
	bundle install -y
	npm run dist
fi

