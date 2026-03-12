# Base image
FROM ubuntu:22.04

# Install dependencies for Piston and isolate
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
    && rm -rf /var/lib/apt/lists/*

# Build and install isolate from source
RUN git clone https://github.com/ioi/isolate.git /tmp/isolate-src \
    && cd /tmp/isolate-src \
    && make \
    && cp isolate /usr/local/bin/ \
    && rm -rf /tmp/isolate-src

# Clone Piston
RUN git clone https://github.com/engineer-man/piston.git /piston

# Set working directory
WORKDIR /piston/api

# Build Piston API
RUN cargo build --release

# Copy start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose default Piston port
EXPOSE 2000

# Start Piston
CMD ["/start.sh"]
