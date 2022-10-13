FROM python:3.9-slim

RUN apt update
RUN apt upgrade -y
RUN apt install git -y
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
RUN git clone https://github.com/ArduPilot/ardupilot.git
WORKDIR /ardupilot
RUN CUR_LOC="$(pwd)"
RUN git submodule update --init --recursive
RUN . ~/.profile
COPY . /app
WORKDIR /app
ENTRYPOINT [ "./ubuntu_arduplane_install.sh" ]
