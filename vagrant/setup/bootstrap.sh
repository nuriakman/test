#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www

  apt update -y
  # apt upgrade -y
  # apt install git -y
  # git config --global user.email "nuriakman@gmail.com"
  # git config --global user.name "Nuri Akman"
  # git config --global push.default simple
  # git push --set-upstream origin master
  apt install vim -y
  apt install php7.4 -y
  # apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y
  apt install mariadb-server mariadb-client -y

  cat php.ini.ayarlar.txt  >>/etc/php/7.4/apache2/php.ini
  service apache2 restart

  cd /var/www
  mkdir adminer
  cd adminer
  wget -O index.php https://www.adminer.org/latest.php

  service --status-all | grep "+"
  # mysql_secure_installation
  echo "mysql_secure_installation çalıştırmayı unutmayın!"

fi


