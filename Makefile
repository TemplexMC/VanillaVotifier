NAME=vanilla-votifier
VERSION=$(shell git rev-parse HEAD)
REPO=templexmc
PWD=$(shell pwd)

build:
	docker run --rm \
		-v $(PWD):/home/maven/project \
		-w /home/maven/project \
		maven:3.6-jdk-8-alpine \
		mvn clean install
	docker build -t $(REPO)/$(NAME):latest .

clean:
	rm -rf build/ out/ target/
