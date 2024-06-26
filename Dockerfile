FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Nobita-Filter-Bot
WORKDIR /Nobita-Filter-Bot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
