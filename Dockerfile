FROM node:latest
MAINTAINER Andrew Rothstein <andrew.rothstein@gmail.com>

ENV APP docker-registry-server
ENV GIT_PROTO git
ENV GIT_REPO_ROOT github.com
ENV GIT_PROJECT_USER andrewrothstein
ENV GIT_PROJECT docker-registry-server
ENV GIT_REPO_URL $GIT_PROTO://$GIT_REPO_ROOT/$GIT_PROJECT_USER/$APP.git
RUN mkdir -p ~/git
ADD . ~/git/${APP}
WORKDIR ~/git/${APP}
CMD ./bin.js -p 80 -u arothste -p password

