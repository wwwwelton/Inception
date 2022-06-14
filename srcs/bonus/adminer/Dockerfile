FROM debian:buster

RUN apt update

RUN apt install less php7.3 php7.3-fpm php7.3-mysqli wget -y

RUN mkdir -p /var/run/php && chmod 777 /var/run/php

RUN echo "\nlisten = 0.0.0.0:8000\n" >>/etc/php/7.3/fpm/pool.d/www.conf

WORKDIR /tmp

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-en.php

RUN chmod a+x adminer-4.8.1-en.php

RUN mkdir -p /var/www/adminer

RUN mv adminer-4.8.1-en.php /var/www/adminer/index.php

COPY tools /usr/local/bin

RUN chmod a+x /usr/local/bin/script.sh

EXPOSE 8000

ENTRYPOINT ["script.sh"]
