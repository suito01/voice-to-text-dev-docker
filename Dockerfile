FROM amazonlinux:2016.09.0.20161118
MAINTAINER suito01

RUN yum -y update | true

# EB CLIインストール
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python && pip install --upgrade --user awsebcli
ENV PATH $HOME/.local/bin:$PATH

# Nodejsインストール
RUN rpm -ivh http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y install nodejs npm --enablerepo=epel
RUN npm install -g n
RUN n 6.9.1
RUN node -v
