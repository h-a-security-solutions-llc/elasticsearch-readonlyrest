FROM docker.elastic.co/elasticsearch/elasticsearch:7.8.1

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin -s install -b ""https://api.beshu.tech/download/es?email=justin%40hasecuritysolutions.com&edition=es&token=gAAAAABfMwUndKnVL5bsiaYXpxSdnBVWM-Tw17N8FjHTuY4Q4hojYlaLqMbcnzUODnCtfwREc65Jf6gte_nbXw1eKPsvtagxmG-eQEt5xH3CXVhGjoNURxDq-4qR-LwCE6yHFUvqA50_3-97qTIAS9iHSj8AoSBRF5c4n-amudl9ngQne-ml7kw%3D&esVersion=7.8.1&pluginVersion=1.21.0"

STOPSIGNAL SIGTERM
