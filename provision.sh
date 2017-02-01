#!/bin/bash

echo "Adding postgresql 9.4"
sudo touch /etc/apt/sources.list.d/pgdg.list
sudo echo 'deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main' > /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

echo "Update"
sudo apt-get update


echo "Installing postgres"
sudo apt-get install postgresql-9.4 -y

sudo cp /vagrant/pg_hba.conf /etc/postgresql/9.4/main/
sudo cp /vagrant/postgresql.conf /etc/postgresql/9.4/main/

sudo chmod +x /vagrant/setup.sh

echo "Adding new locale"
sudo locale-gen en_NZ.UTF-8

echo "Finishes provision"
