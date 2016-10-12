FROM centos:latest

RUN yum -y install wget
RUN wget -O /usr/local/bin/gitlab-ci-multi-runner https://gitlab-ci-multi-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-ci-multi-runner-linux-arm
CMD chmod +x /usr/local/bin/gitlab-ci-multi-runner

RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y install nodejs npm git

RUN npm install -g angular-cli
RUN npm --version