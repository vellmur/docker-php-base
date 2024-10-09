docker_build:
	docker compose -f ./docker/docker-compose.yml build

docker_start:
	docker compose -f ./docker/docker-compose.yml start

docker_stop:
	docker compose -f ./docker/docker-compose.yml stop

docker_up:
	docker compose -f ./docker/docker-compose.yml up -d --remove-orphans

docker_ps:
	docker compose -f ./docker/docker-compose.yml ps

docker_logs:
	docker compose -f ./docker/docker-compose.yml logs -f

docker_down:
	docker compose -f ./docker/docker-compose.yml down -v --rmi=all --remove-orphans

# Go inside php container
app_bash:
	docker compose -f ./docker/docker-compose.yml exec -u www-data php-fpm bash