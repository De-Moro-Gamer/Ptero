#!/bin/bash
echo "*********************************************************************"
echo "-----------        Gracias por utilizar mi script         -----------"
echo "*********************************************************************"
sleep 2s

echo "*********************************************************************"
echo "---------          Add "add-apt-repository" command         ---------"
echo "*********************************************************************"
sleep 1s
apt -y install software-properties-common curl apt-transport-https ca-certificates gnupg

echo "**********************************************************************"
echo "-----  Add additional repositories for PHP, Redis, and MariaDB   -----"
echo "**********************************************************************"
sleep 1s
LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
add-apt-repository -y ppa:chris-lea/redis-server
curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash

echo "*********************************************************************"
echo "---------           Update repositories list                 ---------"
echo "*********************************************************************"
sleep 1s
apt update

echo "*********************************************************************"
echo "-------- Add universe repository if you are on Ubuntu 18.04  --------"
echo "*********************************************************************"
sleep 1s
apt-add-repository universe

echo "*********************************************************************"
echo "---------              Instalando php 8.0...                 --------"
echo "*********************************************************************"
sleep 1s
apt -y install php8.0 

echo "*********************************************************************"
echo "---------                Instalando cli...                  ---------"
echo "*********************************************************************"
sleep 1s
apt-get -y install php8.0-cli

echo "*********************************************************************"
echo "---------                Instalando gd...                   ---------"
echo "*********************************************************************"
sleep 1s
apt-get -y install php8.0-gd

echo "*********************************************************************"
echo "---------                Instalando mysql...                ---------"
echo "*********************************************************************"
sleep 1s
apt-get -y install php8.0-mysql

echo "*********************************************************************"
echo "---------                Instalando pdo...                  ---------"
echo "*********************************************************************"
sleep 1s
apt-get -y install php8.0-pdo-mysql

echo "*********************************************************************"
echo "---------               Instalando mbstring...              ---------"
echo "*********************************************************************"
sleep 1s
apt -y install php8.0-mbstring

echo "*********************************************************************"
echo "---------               Instalando tokenizer...             ---------"
echo "*********************************************************************"
sleep 1s
apt-get -y install -y php8.0-tokenizer

echo "*********************************************************************"
echo "---------               Instalando bcmath...                ---------"
echo "*********************************************************************"
sleep 1s
apt -y install php8.0-bcmath

echo "*********************************************************************"
echo "---------               Instalando xml...                   ---------"
echo "*********************************************************************"
sleep 1s
apt -y install php8.0-xml

echo "*********************************************************************"
echo "---------               Instalando fpm...                   ---------"
echo "*********************************************************************"
sleep 1s
apt -y install php8.0-fpm

echo "*********************************************************************"
echo "---------               Instalando curl...                  ---------"
echo "*********************************************************************"
sleep 1s
apt-get -y install php8.0-curl

echo "*********************************************************************"
echo "---------               Instalando zip...                   ---------"
echo "*********************************************************************"
sleep 1s
apt-get -y install php8.0-zip

echo "*********************************************************************"
echo "---------               Instalando mariadb-server...        ---------"
echo "*********************************************************************"
sleep 1s
apt -y install mariadb-server 

echo "*********************************************************************"
echo "---------               Instalando nginx...                 ---------"
echo "*********************************************************************"
sleep 1s
apt -y install nginx 

echo "*********************************************************************"
echo "---------               Instalando tar...                   ---------"
echo "*********************************************************************"
sleep 1s
apt -y install tar

echo "*********************************************************************"
echo "---------               Instalando unzip...                 ---------"
echo "*********************************************************************"
sleep 1s
apt -y install unzip 

echo "*********************************************************************"
echo "---------               Instalando git...                   ---------"
echo "*********************************************************************"
sleep 1s
apt -y install git

echo "*********************************************************************"
echo "---------               Instalando redis-server...          ---------"
echo "*********************************************************************"
sleep 1s
apt -y install redis-server

echo "*********************************************************************"
echo "---------               Instalando composer...              ---------"
echo "*********************************************************************"
sleep 1s
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

echo "*********************************************************************"
echo "---------                      Listo!                       ---------"
echo "*********************************************************************"
sleep 1s

sh mysql.sh
