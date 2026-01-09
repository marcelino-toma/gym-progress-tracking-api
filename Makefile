start:
	docker compose -f ./.docker/local/docker-compose.yaml up --build -d

stop:
	docker compose -f ./.docker/local/docker-compose.yaml down

terminal:
	docker exec -it gpt-api /bin/bash

logs:
	docker compose -f ./.docker/local/docker-compose.yaml logs -f