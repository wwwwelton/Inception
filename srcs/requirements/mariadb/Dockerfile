FROM	debian:buster

ARG	MYSQL_DATABASE
ARG	MYSQL_ROOT
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_USER
ARG	MYSQL_PASSWORD

RUN	apt update

RUN	apt install mariadb-server mariadb-client procps -y

RUN	mkdir -p /var/lib/mysql /var/run/mysqld

RUN	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

RUN	chmod 777 /var/run/mysqld

RUN	echo "\n[mariadb]\nbind-address=0.0.0.0\nport=3306\n" >> /etc/mysql/my.cnf

RUN	echo "socket=/var/lib/mysql/mysql.sock\n" >> /etc/mysql/my.cnf

COPY	tools /tmp/

RUN	chmod a+x /tmp/setup.sh

RUN	/tmp/setup.sh

EXPOSE	3306

ENTRYPOINT	["mysqld_safe"]
