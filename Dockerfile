FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.0

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin install -b https://hasecuritysolutions.com/readonlyrest-1.19.2_es7.6.0.zip

STOPSIGNAL SIGTERM
