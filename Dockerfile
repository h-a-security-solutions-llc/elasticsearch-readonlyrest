FROM docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.1

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin -s install -b "https://www.hasecuritysolutions.com/readonlyrest-1.25.1_es7.10.1.zip"

STOPSIGNAL SIGTERM
