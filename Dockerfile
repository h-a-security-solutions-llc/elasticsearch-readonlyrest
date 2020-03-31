FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.1

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin install -b https://hasecuritysolutions.com/readonlyrest-1.19.4_es7.6.1.zip

STOPSIGNAL SIGTERM
