.PHONY: test

all: build test

build:
	docker build -t redismock .

test:
	docker run redismock vendor/bin/atoum