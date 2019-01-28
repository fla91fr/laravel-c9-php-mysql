#!/bin/bash

# Add PHP 7.2.x Repository
sudo add-apt-repository ppa:ondrej/php -y

# Update
sudo apt-get -y update

# PHP Modules for Apache
sudo apt-get -y install libapache2-mod-php7.2
sudo a2dismod php5
sudo a2enmod php7.2

# Add Module for Laravel 5.7
sudo apt-get -y install php7.2-openssl
sudo apt-get -y install php7.2-pdo
sudo apt-get -y install php7.2-mbstring
sudo apt-get -y install php7.2-tokenizer
sudo apt-get -y install php7.2-xml
sudo apt-get -y install php7.2-curl
sudo apt-get -y install php7.2-cli 
sudo apt-get -y install php7.2-dev
sudo apt-get -y install php7.2-gd 
sudo apt-get -y install php7.2-intl 
sudo apt-get -y install php7.2-mcrypt 
sudo apt-get -y install php7.2-json
sudo apt-get -y install php7.2-opcache
sudo apt-get -y install php7.2-bcmath
sudo apt-get -y install php7.2-soap
sudo apt-get -y install php7.2-zip
sudo apt-get -y install php7.2-sqlite

# End
echo "done!"
exit
