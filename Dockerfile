FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.0

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER root
RUN cd /tmp \
    && yum install wget -y \
    && wget https://hasecuritysolutions.com/readonlyrest-1.18.9_es7.5.0.zip -O readonlyrest-plugin.zip \
    && chmod 777 /tmp/readonlyrest-plugin.zip \
    && chown elasticsearch:elasticsearch /tmp/readonlyrest-plugin.zip \
    && yum remove wget -y \
    && yum clean all -y
USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin install -b file:///tmp/readonlyrest-plugin.zip \
    && rm -f /tmp/readonlyrest-plugin.zip

STOPSIGNAL SIGTERM
