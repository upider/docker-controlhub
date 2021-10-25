all: help

TAG=v1.0.0
#LIBRARY=1445277435

help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

image: ## Build docker image
	@docker build -t cactus:${TAG} -f Dockerfile .

start: ## Start controlhub container
	@docker run -itd --name controlhub cactus:${TAG} /opt/cactus/lib/controlhub/bin/controlhub foreground

stop: ## Stop controlhub container
	@docker stop controlhub

remove: ## Remove controlhub container
	@docker rm controlhub
