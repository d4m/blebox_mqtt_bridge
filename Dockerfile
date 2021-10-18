ARG BUILD_FROM
FROM $BUILD_FROM

WORKDIR /app

RUN apk add --no-cache nodejs npm
RUN curl -Ls https://github.com/d4m/blebox_mqtt/archive/refs/heads/master.tar.gz | tar zxvf - --strip-components=1

RUN npm ci --only=production

COPY run.sh .
RUN chmod +x run.sh

CMD [ "./run.sh" ]
