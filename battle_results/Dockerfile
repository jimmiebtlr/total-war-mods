FROM alpine

RUN apk update && apk add lua5.1 luarocks lua5.1-dev gcc musl g++
RUN mkdir -p /root/.cache/luarocks && chmod -R 777 /root/.cache
RUN luarocks-5.1 install luasocket inspect
