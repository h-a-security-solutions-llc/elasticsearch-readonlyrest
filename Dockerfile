FROM docker.elastic.co/elasticsearch/elasticsearch:6.7.0

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER root
COPY readonlyrest-1.17.4_es6.7.0.zip /tmp
RUN cd /usr/share/elasticsearch
RUN bin/elasticsearch-plugin install -b file:///tmp/readonlyrest-1.17.4_es6.7.0.zip

STOPSIGNAL SIGTERM