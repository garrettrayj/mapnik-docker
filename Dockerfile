FROM centos:7

ENV MAPNIK_INSTALL_VERSION 3.0.9

RUN yum -y update

RUN yum -y install epel-release && \
    yum -y install \
        bzip2 \
        bzip2-devel \
        cairo-devel \
        clang \
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
        python-devel \
        sqlite-devel \
        tar \
        wget \
    && \
    yum clean all

ENV CC /usr/bin/clang
ENV CXX /usr/bin/clang++
ENV CPP /usr/bin/clang-cpp
ENV LD_LIBRARY_PATH /usr/local/lib

RUN cd /opt && \
    wget -nv http://downloads.sourceforge.net/project/boost/boost/1.59.0/boost_1_59_0.tar.bz2

RUN cd /opt && \
    tar -xjf boost_1_59_0.tar.bz2 && \
    cd /opt/boost_1_59_0 && \
    ./bootstrap.sh --with-toolset=clang && \
    ./b2 install toolset=clang

RUN cd /opt && \
    wget -nv https://mapnik.s3.amazonaws.com/dist/v${MAPNIK_INSTALL_VERSION}/mapnik-v${MAPNIK_INSTALL_VERSION}.tar.bz2

RUN cd /opt && \
    tar -xjf mapnik-v${MAPNIK_INSTALL_VERSION}.tar.bz2 && \
    cd /opt/mapnik-v${MAPNIK_INSTALL_VERSION} && \
    ./configure CXX=clang++ CC=clang && \
    make && \
    make install