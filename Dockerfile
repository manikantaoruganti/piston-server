FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    pkg-config \
    libssl-dev \
    cargo \
    && curl -L -o /tmp/isolate.deb https://launchpad.net/ubuntu/+archive/primary/+files/isolate_3.11-1_amd64.deb \
    && dpkg -i /tmp/isolate.deb \
    && rm /tmp/isolate.deb

RUN git clone https://github.com/engineer-man/piston.git /piston

WORKDIR /piston/api

RUN cargo build --release

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 2000

CMD ["/start.sh"]
