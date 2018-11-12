Mapnik Docker
=============

A pull-n-play [Docker](https://www.docker.com/) image for [Mapnik](http://mapnik.org/),
a geospatial visualization and processing toolkit.

Created to be a base image for developing map tile servers and spatial processing nodes. 
Saves time on compiling Boost and Mapnik for descendant images.

* Based on CentOS 7
* The complete Mapnik experience with all OEM input plugins and output formats.
* LLVM/Clang C++ environment

Getting Started
---------------

    docker run -it garrettrayj/mapnik-docker

Take a look around...

    mapnik-config --version
    gdal-config --version
    pg_config --version
    sqlite3 --version
