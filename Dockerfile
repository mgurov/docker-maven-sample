FROM maven:3.3.3-jdk-8

ADD . /usr/src/app

WORKDIR /usr/src/app