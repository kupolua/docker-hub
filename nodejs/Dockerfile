FROM mhart/alpine-node

MAINTAINER pkulakovsky@gmail.com

ADD entrypoint.sh /

RUN chmod 700 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]