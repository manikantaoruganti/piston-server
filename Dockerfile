FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    pkg-config \
    libssl-dev \
    cargo \
    bison \
    flex \
    automake \
    autoconf \
    libtool \
    zlib1g-dev \
    libncurses5-dev \
    wget \
    unzip \
    libcap-dev \
    libsystemd-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/ioi/isolate.git /tmp/isolate-src \
    && cd /tmp/isolate-src \
    && make \
    && cp isolate /usr/local/bin/ \
    && rm -rf /tmp/isolate-src

RUN git clone https://github.com/engineer-man/piston.git /piston

WORKDIR /piston/api

RUN cargo build --release

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 10000

CMD ["/start.sh"]
