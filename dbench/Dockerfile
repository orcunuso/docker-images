FROM alpine:3.13.4

RUN apk --no-cache add make alpine-sdk zlib-dev libaio-dev linux-headers coreutils libaio && \
    git clone https://github.com/axboe/fio && \
    cd fio && \
    ./configure && \
    make -j`nproc` && \
    make install && \
    cd .. && \
    rm -rf fio && \
    apk --no-cache del make alpine-sdk zlib-dev libaio-dev linux-headers coreutils

VOLUME /tmp
WORKDIR /tmp
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
USER 10001
CMD ["fio"]
