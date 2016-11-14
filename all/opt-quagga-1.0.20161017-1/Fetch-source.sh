#!/bin/bash

SRC=quagga-1.0.20161017.tar.gz
DST=/var/spool/src/$SRC
SHA=d378bae979ef425db2a832fbfbd4e7cd1575bd4d88076608be27e8043d3f18a4
MD5=35d83481b189ca55f82116ec147305fa

pkg_install curl-7.49.1-1 || exit 2
pkg_install tarmd-1.2-1   || exit 2
pkg_install wget-1.15-1   || exit 2
[ -s "$DST" ] || tarmd $SHA $DST curl -L -k http://download.savannah.gnu.org/releases/quagga/$SRC \
    || ../../wget-finder -O $DST $SRC:$MD5
