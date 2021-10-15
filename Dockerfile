ARG BUILD_FROM=ghcr.io/hassio-addons/base/amd64:stable
FROM ${BUILD_FROM}

RUN apk add --no-cache --virtual node git
RUN git clone https://github.com/d4m/blebox_mqtt.git

CMD [ "node /data/options.json" ]
