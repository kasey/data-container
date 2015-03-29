FROM shrikar/machinelearning

ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux
RUN apt-get update
RUN apt-get install -y tar git curl wget net-tools build-essential
RUN apt-get install -y python python-dev python-distribute python-pip

RUN pip install -r requirements.txt
