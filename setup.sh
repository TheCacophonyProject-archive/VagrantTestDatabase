#!/bin/bash

sudo python sql_gen.py

echo "Running postgres script"

sudo -u postgres psql -d postgres -a -f /vagrant/create_users.sql
sudo -u postgres psql -d postgres -a -f /vagrant/psql_script.sql

sudo rm /vagrant/sql_gen.sql

sudo service postgresql restart
