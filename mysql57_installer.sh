#!/bin/bash

LANG=en_GB.UTF-8

# Copy filename from http://dev.mysql.com/downloads/repo/apt/
mysql_apt_deb_file=mysql-apt-config_0.8.9-1_all.deb

# Add MySQL 5.7.x Repository
curl -LO http://repo.mysql.com/${mysql_apt_deb_file}
echo mysql-apt-config mysql-apt-config/select-product          select Apply              | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-server           select mysql-5.7          | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-connector-python select none               | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-workbench        select none               | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-utilities        select none               | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-connector-odbc   select connector-odbc-x.x | sudo debconf-set-selections
export DEBIAN_FRONTEND=noninteractive
sudo -E dpkg -i ${mysql_apt_deb_file}

# Update
sudo apt-get -y update

# Upgrade MySQL Version 5.7.x
sudo apt-get -y install mysql-server
mysql-ctl start
sudo mysql_upgrade -u root --force --upgrade-system-tables

# Create User and Database
mysql -u root -e "create user homestead;create database homestead;grant all on homestead.* to homestead@localhost identified by 'secret';"

# End
echo "done!"
exit
