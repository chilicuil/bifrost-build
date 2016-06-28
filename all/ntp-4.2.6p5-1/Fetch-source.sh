#!/bin/bash

SRC=ntp-4.2.6p5.tar.gz
DST=/var/spool/src/$SRC
MD5=00df80a84ec9528fcfb09498075525bc

pkg_install wget-1.15-3 || exit 2
[ -s "$DST" ] || wget --no-check-certificate -O $DST http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/$SRC \
 || ../../wget-finder -O $DST $SRC:$MD5
