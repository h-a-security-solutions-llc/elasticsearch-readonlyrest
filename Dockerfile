FROM docker.elastic.co/elasticsearch/elasticsearch:7.9.0

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin -s install -b "https://www.hasecuritysolutions.com/readonlyrest-1.22.0_es7.9.0.zip"

STOPSIGNAL SIGTERM
