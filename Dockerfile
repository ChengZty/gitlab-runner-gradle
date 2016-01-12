FROM gitlab/gitlab-runner:latest

MAINTAINER Alexey Ukhov <auk@startext.tomsk.ru>

ENV HOME /root
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN locale-gen en_US.UTF-8
RUN apt-get update && apt-get install -yq --no-install-recommends software-properties-common git curl libfontconfig1

# Oracle JDK 8 installation
RUN sudo add-apt-repository ppa:webupd8team/java -y && apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer
RUN echo "oracle-jdk-8 is installed in $JAVA_HOME" >> /README

# gradle installation
RUN sudo add-apt-repository ppa:cwchien/gradle -y && apt-get update && apt-get install -y gradle-ppa

# NodeJS installation
RUN curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
RUN apt-get install -y nodejs && npm install -g npm

# clean all
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
