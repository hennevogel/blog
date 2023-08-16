.PHONY: all build
all:
	docker build -t blog_build container
	docker run --rm -it -v .:/home/hvogel/blog blog_build make build
build:
	sudo gem install bundler -v 2.3.26 # last bundler version with ruby 2.5 support
	bundle install
	jekyll build
