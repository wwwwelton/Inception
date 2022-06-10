FROM debian:buster

RUN apt update

RUN apt install redis -y

RUN echo "\nbind 0.0.0.0\n" > /etc/redis/redis.conf

RUN echo "protected-mode no\n" >> /etc/redis/redis.conf

RUN mkdir /data && chown redis:redis /data

EXPOSE 6379

ENTRYPOINT ["redis-server", "/etc/redis/redis.conf"]
