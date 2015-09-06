all: build push

build:
	docker build --rm -t dpetzold/ubuntu-pip3 .

push:
	docker push dpetzold/ubuntu-pip3

shell:
	docker run -it dpetzold/ubuntu-pip3 /bin/bash
