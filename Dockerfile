FROM docker.elastic.co/elasticsearch/elasticsearch:7.9.1

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin -s install -b "https://www.hasecuritysolutions.com/readonlyrest-1.22.1_es7.9.1.zip"

STOPSIGNAL SIGTERM
