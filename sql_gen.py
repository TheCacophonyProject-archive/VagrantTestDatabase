import hashlib
import getpass
import fileinput


# Getting username
username = raw_input('Enter in server username :')
if (username == ''):
	username = 'upload_server'


# Getting password
hash1 = hashlib.md5(getpass.getpass('Enter in password for \''+username+'\': ')+username).hexdigest()
hash2 = hashlib.md5(getpass.getpass('Retype password: ')+username).hexdigest()
while (hash1 != hash2):
	print('Passwords were not the same.')
	hash1 = hashlib.md5(getpass.getpass('Enter in password for \''+username+'\': ')+username).hexdigest()
	hash2 = hashlib.md5(getpass.getpass('Retype password: ')+username).hexdigest()


# Making sql file
md5pass = '\'md5'+hash1+'\''
file = open('/vagrant/psql_script.sql', 'w')
for line in fileinput.input('/vagrant/psql_script_TEMPLATE.sql', inplace=False):
	newline = line.replace('USERNAME', username).replace('MD5PASSWORD', md5pass)
	file.write(newline)
file.close()
