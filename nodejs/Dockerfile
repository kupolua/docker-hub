FROM alpine:3.4

MAINTAINER pkulakovsky@gmail.com

RUN \
   build_pkgs="build-base linux-headers pcre-dev curl zlib-dev gnupg geoip-dev libxslt-dev perl-dev gd-dev" \
&& runtime_pkgs="ca-certificates pcre zlib gd geoip libxslt libgcc" \
&& apk --no-cache add ${runtime_pkgs} ${build_pkgs} \
#&& apk --no-cache del ${build_pkgs} \
#&& apk --no-cache add ${runtime_pkgs} \
&& apk update \
&& apk add git \
&& apk add --update bash

ADD entrypoint.sh /
RUN chmod 700 /entrypoint.sh

WORKDIR /www-data

#ENTRYPOINT ["/entrypoint.sh"]