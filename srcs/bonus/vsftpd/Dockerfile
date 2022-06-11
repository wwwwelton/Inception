FROM debian:buster

ARG FTP_PATH
ARG FTP_USER
ARG FTP_PWD

RUN apt update

RUN apt install vsftpd -y

RUN mv /etc/vsftpd.conf /etc/vsftpd.conf.bak

RUN mkdir -p /var/run/vsftpd/empty

COPY conf /etc

RUN adduser $FTP_USER --disabled-password --gecos "" --home /home/$FTP_USER --shell /bin/bash

RUN echo "$FTP_USER:$FTP_PWD" | chpasswd

RUN echo "local_root=$FTP_PATH\n" >> /etc/vsftpd.conf

COPY tools /usr/local/bin

RUN chmod a+x /usr/local/bin/script.sh

EXPOSE 21

ENTRYPOINT ["script.sh"]
