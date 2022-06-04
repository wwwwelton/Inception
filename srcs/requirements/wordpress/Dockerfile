FROM	debian:buster

RUN		apt update

RUN		apt install php7.3 php7.3-fpm php7.3-cli zip unzip wget -y

RUN		mkdir -p /var/run/php && chmod 777 /var/run/php

RUN		echo "\nlisten = 127.0.0.1:9000\n" >> /etc/php/7.3/fpm/pool.d/www.conf

WORKDIR	/tmp

RUN		wget https://wordpress.org/latest.zip && unzip /tmp/latest.zip

RUN		mkdir -p /var/www/wordpress

RUN		mv wordpress/* /var/www/wordpress

EXPOSE	9000

ENTRYPOINT		["php-fpm7.3", "-F"]
