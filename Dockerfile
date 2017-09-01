FROM scratch


ENV ALPINE_ARCH armhf
ENV ALPINE_VERSION 3.6

ADD alpine-minirootfs-${ALPINE_VERSION}-${ALPINE_ARCH}.tar.gz /
CMD ["/bin/sh"]
RUN apk --update add postgresql-client && rm -rf /var/cache/apk/*
ENTRYPOINT [ "psql" ]
