FROM alpine:3.8
RUN apk update \
    && apk add --no-cache logstalgia \
    && apk add --no-cache mesa-dri-swrast \ 
    && rm -rf /var/cache/apk/*
