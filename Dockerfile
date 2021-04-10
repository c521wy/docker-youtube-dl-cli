FROM alpine

RUN \
sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
apk add --no-cache youtube-dl && \
mkdir /output

WORKDIR /output

ENTRYPOINT [ "/usr/bin/youtube-dl" ]