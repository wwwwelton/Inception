FROM	debian:buster

RUN		apt update

RUN		apt install nginx -y

RUN		rm -rf /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY	conf /etc/nginx

EXPOSE	80

STOPSIGNAL	SIGQUIT

CMD		["nginx", "-g", "daemon off;"]
