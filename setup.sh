#!/bin/bash

sudo python /vagrant/sql_gen.py

echo "Running postgres script"

sudo -u postgres psql -d postgres -a -f /vagrant/psql_script.sql

sudo rm /vagrant/psql_script.sql

sudo service postgresql restart
