FROM centos:7

ENV MAPNIK_INSTALL_VERSION 3.0.9

RUN yum -y update

RUN yum -y install epel-release && \
    yum -y install \
        boost-devel \
        bzip2 \
        cairo-devel \
        gcc-c++ \
        gdal-devel \
        harfbuzz-devel \
        libjpeg-turbo-devel \
        libtiff-devel \
        libwebp-devel \
        make \
        postgresql-devel \
        proj-devel \
        proj-epsg \
        sqlite-devel \
        tar \
        wget \
    && \
    yum clean all

RUN cd /opt && \
    wget https://mapnik.s3.amazonaws.com/dist/v${MAPNIK_INSTALL_VERSION}/mapnik-v${MAPNIK_INSTALL_VERSION}.tar.bz2 && \
    tar -xjf mapnik-v${MAPNIK_INSTALL_VERSION}.tar.bz2 && \
    cd /opt/mapnik-v${MAPNIK_INSTALL_VERSION} && \
    ./configure && \
    make && \
    make install