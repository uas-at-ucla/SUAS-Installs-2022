FROM ubuntu:20.04
RUN apt update
RUN apt upgrade -y
RUN apt install python3 -y
RUN apt install git -y
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app
