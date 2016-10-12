FROM centos:latest

RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y install nodejs npm git

RUN npm install -g angular-cli
RUN npm --version