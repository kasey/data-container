FROM ubuntu:14.04

RUN  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget

RUN apt-get install -y python2.7 python-dev python-distribute python-pip

# Set environment variables.
ENV HOME /root
WORKDIR /root

ADD requirements.txt /root/requirements.txt
RUN pip install -r requirements.txt
