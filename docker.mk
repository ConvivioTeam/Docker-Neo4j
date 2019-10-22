include .env

.PHONY: test build push login

NAME   := ${REPO_NAME}
TAG    := $(git log -1 --pretty=%!H(MISSING))
TAG34  := $$(git describe --tags --abbrev=0 --match "${TAG_BASE}3.4.*" | grep -oE "^${TAG_BASE}(3\.4\.[0-9.]+)" | cut -c16-)
TAG35  := $$(git describe --tags --abbrev=0 --match "${TAG_BASE}3.5.*" | grep -oE "^${TAG_BASE}(3\.5\.[0-9.]+)" | cut -c16-)
IMG    := ${NAME}:${TAG}
IMG34  := ${NAME}:${TAG34}
IMG35  := ${NAME}:${TAG35}
LATEST := ${NAME}:latest

test:
	@echo ${TAG35}

build:
	@docker build -t ${IMG34} ./image-src/3.4/
	@docker tag ${IMG34} ${IMG34}
	@docker tag ${IMG34} ${NAME}:3.4
	@docker build -t ${IMG35} ./image-src/3.5/
	@docker tag ${IMG35} ${IMG35}
	@docker tag ${IMG35} ${NAME}:3.5
	@docker tag ${IMG35} ${LATEST}
 
push:
	@docker push ${NAME}
