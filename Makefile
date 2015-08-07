.PHONY: distr
build:
	docker build -t local/t .
mvn_cache:
	- docker run --name mvn_cache maven:3.3.3-jdk-8 /bin/true
run:
	docker run -it --rm --volumes-from mvn_cache -v /var/run/docker.sock:/var/run/docker.sock local/t mvn verify
all: mvn_cache run

