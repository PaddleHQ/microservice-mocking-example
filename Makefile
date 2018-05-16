DOCKER_COMPOSE_FILES = -f docker-compose.yml
ifeq ($(WITH_MOCKS), true)
	DOCKER_COMPOSE_FILES += -f docker-compose.mocks.yml
endif

DOCKER_COMPOSE=docker-compose $(DOCKER_COMPOSE_FILES)

build: ## Build the docker containers
	docker build -t paddle-examples/mocks-nginx -f docker/nginx/Dockerfile .
	docker build -t paddle-examples/mocks-php -f docker/php/Dockerfile .
	docker build -t paddle-examples/mocks-mountebank -f docker/mountebank/Dockerfile .

start:
	$(DOCKER_COMPOSE) up -d

stop:
	$(DOCKER_COMPOSE) stop

start-with-mocks: ## start service with mocking enabled
	WITH_MOCKS=true make start

start-without-mocks: ## start service without mocking
	WITH_MOCKS=false make start

.SILENT: help
help: ## Show this help message
	set -x
	echo "Usage: make [target] ..."
	echo ""
	echo "Available targets:"
	grep ':.* ##\ ' ${MAKEFILE_LIST} | awk '{gsub(":[^#]*##","\t"); print}' | column -t -c 2 -s $$'\t' | sort
