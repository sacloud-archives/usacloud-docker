FROM centos:7
MAINTAINER Kazumichi Yamamoto <yamamoto.febc@gmail.com>

RUN yum install -y \
  git \
  make \
  rpm-build \
  createrepo \
  rpm-build \
  && yum clean all

ADD rpmmacros /root/.rpmmacros

WORKDIR /workdir
ENTRYPOINT ["rpmbuild"]