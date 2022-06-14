FROM debian:buster

ARG AUTH_TOKEN

RUN apt update

RUN apt install wget -y

WORKDIR /tmp

RUN wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

RUN tar xvzf ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin

RUN ngrok config add-authtoken $AUTH_TOKEN

ENTRYPOINT ["ngrok", "http", "nginx:443"]
