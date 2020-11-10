FROM docker.elastic.co/elasticsearch/elasticsearch-oss:7.9.3

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin -s install -b "https://www.hasecuritysolutions.com/readonlyrest-1.24.0_es7.9.3.zip"

STOPSIGNAL SIGTERM
