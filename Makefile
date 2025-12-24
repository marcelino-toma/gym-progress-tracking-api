start:
	@if command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then \
		docker compose -f ./.docker/local/docker-compose.yaml up --build -d; \
	elif command -v docker-compose >/dev/null 2>&1; then \
		docker-compose -f ./.docker/local/docker-compose.yaml up --build -d; \
	else \
		echo "Please install Docker Compose (docker compose plugin or docker-compose)."; exit 1; \
	fi

terminal:
	@docker exec -it gpt-api /bin/bash

logs:
	@if command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then \
		docker compose -f ./.docker/local/docker-compose.yaml logs -f; \
	elif command -v docker-compose >/dev/null 2>&1; then \
		docker-compose -f ./.docker/local/docker-compose.yaml logs -f; \
	else \
		echo "Please install Docker Compose (docker compose plugin or docker-compose)."; exit 1; \
	fi