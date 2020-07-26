FROM docker.elastic.co/elasticsearch/elasticsearch:7.8.0

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin -s install -b "https://www.hasecuritysolutions.com/readonlyrest-1.20.0_es7.8.0.zip"

STOPSIGNAL SIGTERM
