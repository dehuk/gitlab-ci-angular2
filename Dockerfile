FROM debian:latest

RUN echo "deb http://ftp.debian.org/debian sid main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.org/debian sid main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y curl git
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get update && apt-get install -y gitlab-ci-multi-runner nodejs build-essential
RUN apt-get clean
RUN npm install -g angular-cli