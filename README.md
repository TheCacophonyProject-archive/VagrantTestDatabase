# VagrantTestDatabase
Setup for a PostgreSQL database using Vagrant for testing purposes

## Setup
- Start VM with  ```vagrant up```
- SSH into VM ```vagrant ssh```
- Run setup.sh ```sudo /vagrant/setup.sh```

The setup.sh will prompt for a username and password. This is the username and password that should be entered into the UploadServer config file.

The PostgreSQL database host and port are 192.168.33.10:5432
