FROM ruby:2.6.4-alpine3.10
ENV WORKDIR /app
WORKDIR ${WORKDIR}

RUN apk add build-base