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
    && wget https://github.com/alexdobin/STAR/archive/2.6.1a.tar.gz \
    && tar xf 2.6.1a.tar.gz \
    && rm  2.6.1a.tar.gz \
    && cd STAR-2.6.1a/source \
    && make STAR \
    && mv STAR /usr/local/bin/ \
    && cd ../../ \
    && rm -rf STAR-2.6.1a \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
