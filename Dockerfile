FROM ubuntu
MAINTAINER Tomasz Jonik <tomasz@hurricane.works>

VOLUME /data
COPY ./data /data
CMD chmod +x /data/run.sh

RUN /bin/bash
