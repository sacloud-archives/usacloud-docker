FROM alpine:3.6
MAINTAINER Kazumichi Yamamoto <yamamoto.febc@gmail.com>
LABEL MAINTAINER 'Kazumichi Yamamoto <yamamoto.febc@gmail.com>'

ENV USACLOUD_VERSION=0.2.1
LABEL io.whalebrew.config.environment '["SAKURACLOUD_ACCESS_TOKEN", "SAKURACLOUD_ACCESS_TOKEN_SECRET" , "SAKURACLOUD_ZONE" , "SAKURACLOUD_TIMEOUT" ,"USACLOUD_PROFILE", "SAKURACLOUD_TRACE_MODE","SACLOUD_OJS_ACCESS_KEY_ID","SACLOUD_OJS_SECRET_ACCESS_KEY" ]'

RUN set -x && apk add --no-cache --update zip ca-certificates

ADD https://github.com/sacloud/usacloud/releases/download/v${USACLOUD_VERSION}/usacloud_linux-amd64.zip ./
RUN unzip usacloud_linux-amd64.zip -d /bin; rm -f usacloud_linux-amd64.zip

VOLUME ["/workdir"]
WORKDIR /workdir

ENTRYPOINT ["/bin/usacloud"]
CMD ["--help"]
