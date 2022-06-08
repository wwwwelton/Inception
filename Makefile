HOSTNAME = $(shell cat /etc/hosts | grep wleite.42.fr)

all: up

up:
ifndef HOSTNAME
	sudo echo "127.0.0.1 wleite.42.fr" >> /etc/hosts
endif
	sudo mkdir -p /home/wleite/data && sudo chmod 777 /home/wleite/data
	sudo docker-compose -f srcs/docker-compose.yml up -d

down:
	sudo docker-compose -f srcs/docker-compose.yml down

clean:
	sudo docker-compose -f srcs/docker-compose.yml down -v --rmi all --remove-orphans
	sudo rm -rf /home/wleite/data/*

fclean: clean
	sudo docker system prune --volumes --all --force
	sudo docker network prune --force
	sudo docker volume prune --force

re: fclean all

.PHONY: all
