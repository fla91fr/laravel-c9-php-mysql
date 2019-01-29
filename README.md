# Script used to upgrade environment of Cloud9 instances
## The following actions are made :
- Installs php 7.2.x (+ main modules)
- Installs mysql 5.7.x
- Installs Laravel 5.7.x
- Installs Composer (up to latest version)
- Adds Authentication to Laravel
- Creates the default user homestead and default db homestead
- Executes Laravel Migration
- Changes .htaccess file to modify DocumentRoot of laravel project (to ./public)
- Downloads adminer.php and put it in public directory (public/adminer.php --> should be deleted in production)

## To install everything in just one command line : 
```
wget -O - https://raw.githubusercontent.com/fla91fr/laravel-installer/master/laravel_c9_php_mysql.sh |bash
```

## Otherwise, for security reasons, you can download and then execute the installation script :
```
wget -O laravel_c9_php_mysql.sh https://raw.githubusercontent.com/fla91fr/laravel-installer/master/laravel_c9_php_mysql.sh
chmod +x laravel_c9_php_mysql.sh
./laravel_c9_php_mysql.sh 
```

## Environment is now ready to be used, and Laravel is usable.
