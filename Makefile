.PHONY: test

all: build test

build:
	docker build -t redismock .

test:
	docker run --rm redismock vendor/bin/atoum