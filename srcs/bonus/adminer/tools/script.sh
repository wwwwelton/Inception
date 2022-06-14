#!/bin/sh

chown -R www-data:www-data /var/www/adminer

php-fpm7.3 -F
