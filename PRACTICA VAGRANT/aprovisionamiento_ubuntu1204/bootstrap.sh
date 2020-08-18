#!/usr/bin/env bash
apt-get update

apt-get install -y apache2

if ! [ -L /var/www ]; then

    rm -rf /var/www
	
    ln -fs /vagrant /var/www
    
fi

mkdir /var/www/html
touch /var/www/html/index.html


