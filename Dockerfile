FROM node:5.8.0-wheezy

MAINTAINER ganberg@aptima.com

RUN mkdir -p /opt/etherpad

COPY . /opt/etherpad

WORKDIR /opt/etherpad

RUN apt-get update
RUN apt-get install -y vim gzip git curl python libssl-dev pkg-config build-essential

CMD /opt/etherpad/bin/run.sh --root