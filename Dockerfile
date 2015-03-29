FROM shrikar/machinelearning

RUN apt-get update
RUN apt-get install -y tar git curl wget net-tools build-essential
apt-get install -y python python-dev python-distribute python-pip

RUN pip install -r requirements.txt
