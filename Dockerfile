FROM amazonlinux:2016.09.0.20161118
MAINTAINER suito01

RUN yum -y update | true

# EB CLIインストール
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python && pip install --upgrade --user awsebcli
ENV PATH PATH=~/.local/bin:$PATH
