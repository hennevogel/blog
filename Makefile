.PHONY: all build
DOCKER_IMAGE_NAME ?= blog_build
all:
	docker build -t $(DOCKER_IMAGE_NAME) container
	docker run --rm -it -v .:/home/blog/blog blog_build make build
build:
	bundle install
	jekyll build
