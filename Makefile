DOCKER_IMAGE := lanrat/certspotter

.PHONY: all run docker

all: docker

docker: Dockerfile
	docker build -t $(DOCKER_IMAGE) .

