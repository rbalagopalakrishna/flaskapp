#FROM python:2-alpine
#COPY . /app
#WORKDIR /app
#RUN pip install -r requirements.txt
#EXPOSE 5000
#CMD python ./app.py

FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /flask-app
RUN pip install -r requirements.txt
CMD python ./app.py
