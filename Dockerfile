FROM alpine:latest

RUN apk add python3 py-pip aria2 ffmpeg

RUN pip3 install youtube-dl
RUN youtube-dl --version

RUN mkdir /data
WORKDIR /data

ENTRYPOINT ["youtube-dl"]
