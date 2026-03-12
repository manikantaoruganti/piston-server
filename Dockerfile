FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
curl \
git \
build-essential \
pkg-config \
libssl-dev \
cargo

RUN git clone https://github.com/engineer-man/piston.git /piston

WORKDIR /piston/api

RUN cargo build --release

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 2000

CMD ["/start.sh"]
