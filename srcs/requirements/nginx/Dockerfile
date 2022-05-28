FROM	debian:buster

RUN		apt update

RUN		apt install openssl -y

RUN		openssl req -x509 -nodes -days 365 -subj \
		"/C=BR/ST=PR/O=42/CN=localhost" -addext \
		"subjectAltName=DNS:localhost" -newkey rsa:2048 \
		-keyout /etc/ssl/private/nginx-selfsigned.key -out \
		/etc/ssl/certs/nginx-selfsigned.crt

RUN		apt install nginx -y

RUN		rm -rf /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY	conf /etc/nginx

EXPOSE	443

STOPSIGNAL	SIGQUIT

ENTRYPOINT		["nginx", "-g", "daemon off;"]
