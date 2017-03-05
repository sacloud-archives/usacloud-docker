#!/bin/sh

alien *.rpm
apt-ftparchive packages . | gzip > Packages.gz
atp-ftparchive release . > Release

exit 0