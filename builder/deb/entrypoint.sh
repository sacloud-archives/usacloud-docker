#!/bin/sh

alien *.rpm
# debuild --no-tgz-check -uc -us
apt-ftparchive packages . > Packages
apt-ftparchive release . > Release

exit 0