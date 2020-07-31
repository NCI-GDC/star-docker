# Makefile for developing an individual Docker image

VERSION = 2.7.5a
DOCKER_REPO = star2

DOCKER_URL := quay.io/ncigdc
DOCKER_IMAGE_COMMIT := ${DOCKER_URL}/${DOCKER_REPO}:${COMMIT_HASH}
DOCKER_IMAGE := ${DOCKER_URL}/${DOCKER_REPO}:${VERSION}

.PHONY: version version-* name
name:
	@echo ${NAME}

version:
	@echo --- VERSION: ${VERSION} ---

version-docker:
	@echo ${DOCKER_IMAGE_COMMIT}
	@echo ${DOCKER_IMAGE}

.PHONY: docker-*
docker-login:
	@echo
	docker login -u=${QUAY_USERNAME} -p=${QUAY_PASSWORD} quay.io

.PHONY: build build-*

build: build-docker

build-docker: docker-login
	@echo
	@echo -- Building docker --
	docker build . \
		--file ./Dockerfile \
		--build-arg NAME=${NAME} \
		-t "${DOCKER_IMAGE}" \

.PHONY: publish
publish: docker-login
	docker push ${DOCKER_IMAGE}
