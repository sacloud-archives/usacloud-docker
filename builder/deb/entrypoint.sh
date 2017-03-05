#!/bin/sh

alien *.rpm
apt-ftparchive packages . > Packages
apt-ftparchive release . > Release

exit 0