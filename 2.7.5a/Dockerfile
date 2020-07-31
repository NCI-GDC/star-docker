FROM quay.io/ncigdc/bio-u18:latest

LABEL maintainer="Tzintzuni Garcia <tzintzuni@uchicago.edu>"

RUN apt-get update \
    && apt-get install -y \
       wget \
    && apt-get clean \
    && wget https://github.com/alexdobin/STAR/archive/2.7.5a.tar.gz \
    && tar -xzf 2.7.5a.tar.gz \
    && rm 2.7.5a.tar.gz \
    && cp STAR-2.7.5a/bin/Linux_x86_64_static/STAR /usr/local/bin/STAR \
    && rm -rf STAR-2.7.5a \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
