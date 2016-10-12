FROM centos:latest

RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -
RUN curl -s https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.rpm.sh | bash
RUN yum -y install nodejs npm git

RUN npm install -g angular-cli
RUN npm --version