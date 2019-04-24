FROM ubuntu:xenial-20161010

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

RUN apt-get update \
    && apt-get install -y \
       gcc \
       g++ \
       make \
       wget \
       zlib1g-dev \
    && apt-get clean \
    && wget https://github.com/alexdobin/STAR/archive/2.7.0f.tar.gz \
    && tar xf 2.7.0f.tar.gz \
    && rm 2.7.0f.tar.gz \
    && cd STAR-2.7.0f/source \
    && make STAR \
    && mv STAR /usr/local/bin/ \
    && cd ../../ \
    && rm -rf STAR-2.7.0f \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
