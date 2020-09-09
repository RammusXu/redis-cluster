FROM alpine:3.12 as builder

RUN apk add git build-base linux-headers

RUN git clone https://github.com/RedisLabs/redis-cluster-proxy.git && \
    cd redis-cluster-proxy && make install

FROM alpine:3.12

COPY --from=builder /usr/local/bin/redis-cluster-proxy /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/redis-cluster-proxy" ]
