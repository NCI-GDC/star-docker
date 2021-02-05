FROM quay.io/ncigdc/bio-u18:latest

LABEL maintainer="Tzintzuni Garcia <tzintzuni@uchicago.edu>"

# Builds star docker image from pre-compiled releases using consistent
# version strings
ARG VERSION_STRING=2.7.5c

RUN apt-get update \
    && apt-get install -y \
       wget \
    && apt-get clean \
    && wget https://github.com/alexdobin/STAR/archive/${VERSION_STRING}.tar.gz \
    && tar -xzf ${VERSION_STRING}.tar.gz \
    && rm ${VERSION_STRING}.tar.gz \
    && cp STAR-${VERSION_STRING}/bin/Linux_x86_64_static/STAR /usr/local/bin/STAR \
    && rm -rf STAR-${VERSION_STRING} \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
