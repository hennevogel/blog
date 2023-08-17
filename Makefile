.PHONY: all build
DOCKER_IMAGE_NAME ?= blog_build
all:
	docker build -t $(DOCKER_IMAGE_NAME) .
	docker run --rm -it -v .:/home/blog/blog $(DOCKER_IMAGE_NAME) make build
build:
	bundle config build.ffi --enable-system-libffi
	bundle config build.nokogiri --use-system-libraries
	bundle config build.sassc --disable-march-tune-native
	bundle install --jobs=3 --retry=3
	jekyll build
