HOSTNAME = $(shell cat /etc/hosts | grep wleite.42.fr)

all: up

up:
ifndef HOSTNAME
	sudo echo "127.0.0.1 wleite.42.fr" >> /etc/hosts
endif
	sudo mkdir -p /home/wleite/data && sudo chmod 777 /home/wleite/data
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

clean:
	docker-compose -f srcs/docker-compose.yml down -v --rmi all --remove-orphans
	sudo rm -rf /home/wleite/data/*

fclean: clean
	docker system prune --volumes --all --force
	docker network prune --force
	docker volume prune --force

re: fclean all

.PHONY: all
