FROM shrikar/machinelearning

RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y tar git curl wget dialog net-tools build-essential
apt-get install -y python python-dev python-distribute python-pip

RUN pip install -r requirements.txt
