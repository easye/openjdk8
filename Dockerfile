FROM alpine:latest

# Alpine Linux - OpenJDK8 Dockerfile

MAINTAINER <easye@not.org>

USER root

RUN \
  apk update && \
  apk upgrade && \
  apk add openjdk8 && \
  rm -rf /var/cache/apk/*

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV var /var/local/
RUN mkdir -p ${var}
WORKDIR ${var}

CMD ["sh"]