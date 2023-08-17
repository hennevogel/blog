.PHONY: all build
DOCKER_IMAGE_NAME ?= blog_build
all:
	docker build -t $(DOCKER_IMAGE_NAME) .
	docker run --rm -it -v .:/home/blog/blog $(DOCKER_IMAGE_NAME) make build
build:
	bundle install
	jekyll build
