## Use bash syntax
SHELL := /bin/bash

all:
		docker-compose up -d --build app

ssh:
		docker-compose exec app bash

ps:
		docker-compose ps

clean:
		docker-compose down
