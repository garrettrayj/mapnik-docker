Mapnik Docker
=============

A pull-n-play [Docker](https://www.docker.com/) image for [Mapnik](http://mapnik.org/),
a geospatial visualization and processing toolkit.

Designed to be a base image for map tile servers and spatial processing nodes. Explore all the options
without waiting for the rather long compile times for both Boost and Mapnik.

* Based on CentOS 7
* The complete Mapnik experience with all input plugins and output formats.
* LLVM/Clang C++ environment

Getting Started
---------------

    docker run -it garrettrayj/mapnik

Take a look around...

    mapnik-config --version
    gdal-config --version
    pg_config --version
    sqlite3 --version

License
-------

The MIT License (MIT)

Copyright &copy; 2016 Garrett Johnson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.