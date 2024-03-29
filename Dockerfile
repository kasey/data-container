FROM ubuntu:14.04

RUN  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget

RUN apt-get install pkg-config
RUN apt-get install -y python2.7 python-dev python-distribute python-pip
RUN apt-get install libfreetype6-dev libfreetype6 libpng12-dev libpng12-0

# Set environment variables.
ENV HOME /root
WORKDIR /root

# split requirements.txt into separate files to make experiementing faster
ADD trivial_requirements.txt /root/trivial_requirements.txt
ADD easy_requirements.txt /root/easy_requirements.txt
ADD hard_requirements.txt /root/hard_requirements.txt
ADD more_requirements.txt /root/more_requirements.txt
RUN pip install -r trivial_requirements.txt
RUN pip install -r easy_requirements.txt
RUN pip install -r hard_requirements.txt
RUN pip install -r more_requirements.txt
