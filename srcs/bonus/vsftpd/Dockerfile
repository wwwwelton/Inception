FROM debian:buster

ARG FTP_PATH
ARG FTP_USER
ARG FTP_PWD

RUN apt update

RUN apt install vsftpd -y

RUN mkdir -p /var/log/ && touch /var/log/vsftpd.log

RUN mv /etc/vsftpd.conf /etc/vsftpd.conf.bak

RUN mkdir -p /var/run/vsftpd/empty

COPY conf /etc

RUN adduser $FTP_USER --disabled-password --gecos "" --home /home/$FTP_USER --shell /bin/bash

RUN usermod -aG www-data $FTP_USER

RUN echo "$FTP_USER:$FTP_PWD" | chpasswd

RUN echo "local_root=$FTP_PATH\n" >> /etc/vsftpd.conf

EXPOSE 21

ENTRYPOINT ["vsftpd", "/etc/vsftpd.conf"]
