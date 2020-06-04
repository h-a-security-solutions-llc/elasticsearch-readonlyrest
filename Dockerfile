FROM docker.elastic.co/elasticsearch/elasticsearch:7.7.0

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER elasticsearch
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin -s install -b "https://api.beshu.tech/download/es?email=justin%40hasecuritysolutions.com&edition=es&token=gAAAAABe2VrjZA6ZjiiXBcMpfmj7Pi6G8ZUmctZ6GQ7jDDY4xTu_UTZbcXOkw5gyPmEzNjQI0TZR7GzSmiXOmMdKXJZJLVAJDKUQyGzjQPe0Y-UZgNLT2twYj2Jpz3AHsVnnHGbdwGUJurpcyKhzdf9L-i216Lz2moN3lAyYS0yQ-fy7JoWEWN4%3D&esVersion=7.7.0&pluginVersion=1.19.5"

STOPSIGNAL SIGTERM
