FROM ubuntu:trusty
MAINTAINER Andrew Rothstein <andrew.rothstein@gmail.com>

RUN apt-get update -y
RUN apt-get install -y nodejs-legacy
RUN apt-get install -y npm
RUN mkdir -p /docker-registry-server
ADD . /docker-registry-server
WORKDIR /docker-registry-server
RUN npm install

CMD ./bin.js

EXPOSE 8000

