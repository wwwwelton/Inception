FROM	debian:buster

ARG	MYSQL_DATABASE
ARG	MYSQL_ROOT
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_USER
ARG	MYSQL_PASSWORD

RUN	apt update

RUN	apt install mariadb-server -y

RUN echo "\n[mariadb]\nbind-address=0.0.0.0\nport=3306" >> /etc/mysql/my.cnf

EXPOSE	3306

ENTRYPOINT	["mysqld_safe"]
