#!/bin/sh

chgrp -R $FTP_USER $FTP_PATH
chown -R $FTP_USER $FTP_PATH
chmod -R +x $FTP_PATH

vsftpd /etc/vsftpd.conf
