FROM docker.elastic.co/elasticsearch/elasticsearch:7.1.1

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER root
RUN cd /tmp \
    && yum install wget -y \
    && wget https://hasecuritysolutions.com/readonlyrest-1.18.1_es7.1.1.zip -O readonlyrest-plugin.zip \
    && cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin install -b file:///tmp/readonlyrest-plugin.zip \
    && rm -f /tmp/readonlyrest-plugin.zip \
    && bin/elasticsearch-plugin install -b repository-s3 \
    && yum remove wget -y \
    && yum clean all -y
USER elasticsearch

STOPSIGNAL SIGTERM
