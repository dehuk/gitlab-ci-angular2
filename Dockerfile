FROM debian:latest

RUN echo "deb http://ftp.debian.org/debian sid main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.org/debian sid main contrib non-free" >> /etc/apt/sources.lis

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils \
    curl \
    git \
    gitlab-ci-multi-runner \
    build-essential
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install nodejs
RUN npm install -g angular-cli