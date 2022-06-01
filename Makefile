all: up

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

clean:
	docker-compose -f srcs/docker-compose.yml down -v --rmi all --remove-orphans

fclean: clean
	docker system prune --volumes --all --force
	docker network prune --force
	docker volume prune --force

re: fclean all

.PHONY: all
