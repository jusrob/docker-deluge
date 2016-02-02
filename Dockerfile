FROM ubuntu:latest
MAINTAINER jusrob <jrob48@gmail.com>

ENV LANG en_US.UTF-8
ENV TERM linux
RUN locale-gen $LANG

RUN apt-get install software-properties-common -qy && \
    add-apt-repository ppa:deluge-team/ppa && \
    apt-get update -q && \
    apt-get install deluged deluge-web -qy && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/*

VOLUME ["/data"]
EXPOSE 8112
EXPOSE 53160
EXPOSE 53160/udp
EXPOSE 58846

CMD deluged -c /data -L info -l /data/deluged.log && deluge-web -c /data 
