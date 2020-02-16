#!/bin/sh

echo "Changing group for /var/www/html, /var/www/ossn_data to www-data"
chgrp -R www-data /var/www/html
chgrp -R www-data /var/www/ossn_data

echo "Granting g+w on /var/www/*"
chmod -R g+w /var/www/*

echo "Appending local.ossn.com DNS mask to /etc/hosts..."
echo "127.0.0.1  local.ossn.com" >> /etc/hosts

# Hand-over to original entrypoint
docker-php-entrypoint apache2-foreground
