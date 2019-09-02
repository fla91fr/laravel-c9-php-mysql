#Composer installation
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo cp composer.phar /usr/bin/composer

# Add Module for Laravel > 5.7
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
sudo apt-get -y install php7.2-mysql
sudo apt-get -y install php7.2-dom
sudo apt-get -y install php7.2-ext-mbstring
sudo apt-get -y install unzip
