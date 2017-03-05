#!/bin/sh

alien *.rpm
apt-ftparchive packages . | gzip > Packages.gz
apt-ftparchive release . > Release

exit 0