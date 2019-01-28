# Script used to upgrade environment of Cloud9 instances
## The following actions are made :
- php 7.2.x (+ main modules)
- mysql 5.7.x
- laravel 5.7.x
- composer (up to last version)
- Add Authentication to Laravel
- Execute Laravel Migration
- Change .htaccess file to modify DocumentRoot (to ./public)
- Download adminer.php

## To install all directly : 
```
wget -O - https://raw.githubusercontent.com/fla91fr/laravel-installer/master/laravel_c9_php_mysql.sh |bash
```

## Or be to sure of what includes the installation script : 
```
wget -O laravel_c9_php_mysql.sh https://raw.githubusercontent.com/fla91fr/laravel-installer/master/laravel_c9_php_mysql.sh
chmod +x laravel_c9_php_mysql.sh
./laravel_c9_php_mysql.sh 
```
