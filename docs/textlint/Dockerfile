FROM node:8.1
MAINTAINER Kazumichi Yamamoto <yamamoto.febc@gmail.com>
LABEL MAINTAINER 'Kazumichi Yamamoto <yamamoto.febc@gmail.com>'

RUN npm install -g --no-cache textlint \
    textlint-rule-common-misspellings \
    textlint-rule-preset-ja-technical-writing \
    textlint-filter-rule-whitelist \
    textlint-filter-rule-comments

WORKDIR /workdir
ENTRYPOINT ["textlint"]
