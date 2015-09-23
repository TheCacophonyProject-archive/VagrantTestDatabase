#!/bin/bash

echo "Update"
#sudo apt-get update

echo "Installing postgres"
sudo apt-get install postgresql-9.3 -y

sudo cp /vagrant/pg_hba.conf /etc/postgresql/9.3/main/
sudo cp /vagrant/postgresql.conf /etc/postgresql/9.3/main/

sudo chmod +x /vagrant/setup.sh

echo "Finishes provision"
