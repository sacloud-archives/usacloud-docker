FROM ubuntu:latest
LABEL maintainer="Kazumichi Yamamoto <yamamoto.febc@gmail.com>"
MAINTAINER Kazumichi Yamamoto <yamamoto.febc@gmail.com>

RUN  apt-get update && apt-get -y install alien apt-utils && apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
ADD entrypoint.sh /workdir/entrypoint.sh
WORKDIR /workdir
ENTRYPOINT ["/workdir/entrypoint.sh"]
