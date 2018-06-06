FROM xzesstence/docker-ubuntu:latest
MAINTAINER "Tim Koepsel"

RUN apt-get update && apt-get install -q -y apache2 && apt-get install openssh-server -q -y
RUN useradd -d /home/xzesstence -ms /bin/bash -g root -G sudo -p 123456 123456
USER xzesstence
WORKDIR /home/xzesstence

CMD service apache2 start && CMD service openssh-server start && bash

