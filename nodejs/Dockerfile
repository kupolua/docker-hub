FROM alpine:3.4

MAINTAINER pkulakovsky@gmail.com

RUN \
   build_pkgs="build-base linux-headers pcre-dev curl zlib-dev gnupg geoip-dev libxslt-dev perl-dev gd-dev" \
&& runtime_pkgs="ca-certificates pcre zlib gd geoip libxslt libgcc" \
&& apk --no-cache add ${runtime_pkgs} ${build_pkgs} \
&& for key in $GPG_KEYS; do \
       gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; \
   done \apk update \
#&& apk --no-cache del ${build_pkgs} \
#&& apk --no-cache add ${runtime_pkgs} \
&& apk add git

ADD entrypoint.sh /
RUN chmod 700 /entrypoint.sh

WORKDIR /www-data

#ENTRYPOINT ["/entrypoint.sh"]