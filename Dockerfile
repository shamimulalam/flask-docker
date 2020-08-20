FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip

RUN pip install flask
RUN pip install flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run