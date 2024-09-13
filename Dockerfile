FROM debian:12-slim

RUN apt-get update -y \
    && apt-get install -y \
    curl \
    git \
    guile-3.0 \
    lsof \
    make \
    procps \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

COPY ./Makefile /app/Makefile
COPY ./src /app/src
WORKDIR /app
RUN make setup \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* \
    && make setup-lb

 # REPL listen port
EXPOSE 1689

CMD [ "make", "lb", "run-with-repl" ]
