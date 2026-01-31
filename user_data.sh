#!/bin/bash
yum update -y
yum install httpd php php-mysqlnd -y

systemctl start httpd
systemctl enable httpd

cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

chown -R apache:apache wordpress
chmod -R 755 wordpress

cp wordpress/wp-config-sample.php wordpress/wp-config.php

sed -i "s/database_name_here/${db_name}/" wordpress/wp-config.php
sed -i "s/username_here/${db_user}/" wordpress/wp-config.php
sed -i "s/password_here/${db_password}/" wordpress/wp-config.php
sed -i "s/localhost/${db_host}/" wordpress/wp-config.php

systemctl restart httpd
