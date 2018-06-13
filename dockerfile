FROM xzesstence/docker-ubuntu:latest
MAINTAINER "Tim Koepsel"

RUN apt-get update
RUN apt-get install -q -y nodejs && apt-get install -q -y npm
RUN apt-get install -q -y openssh-server

RUN npm install -g grunt && npm install -g gulp && npm install -g rubygems
RUN curl https://install.meteor.com/ | sh

RUN useradd -d /home/xdev -ms /bin/bash -g root -G sudo -p 123456 xdev
USER xdev
WORKDIR /home/xdev

CMD service openssh-server start
RUN bash