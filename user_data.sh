#!/bin/bash
apt update -y
apt install apache2 php libapache2-mod-php php-mysql wget unzip -y

systemctl start apache2
systemctl enable apache2

cd /var/www/html
wget https://wordpress.org/latest.zip
unzip latest.zip

chown -R www-data:www-data wordpress
chmod -R 755 wordpress

cp wordpress/wp-config-sample.php wordpress/wp-config.php

sed -i "s/database_name_here/${db_name}/" wordpress/wp-config.php
sed -i "s/username_here/${db_user}/" wordpress/wp-config.php
sed -i "s/password_here/${db_password}/" wordpress/wp-config.php
sed -i "s/localhost/${db_host}/" wordpress/wp-config.php

systemctl restart apache2
