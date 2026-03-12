#!/bin/sh

mkdir -p /tmp/isolate /tmp/storage
export ISOLATE_DIR=/tmp/isolate
export STORAGE_DIR=/tmp/storage

cd /piston/api

# Install 16 languages
./target/release/ppman install python
./target/release/ppman install gcc
./target/release/ppman install g++
./target/release/ppman install java
./target/release/ppman install node
./target/release/ppman install typescript
./target/release/ppman install rust
./target/release/ppman install dotnet
./target/release/ppman install kotlin
./target/release/ppman install go
./target/release/ppman install swift
./target/release/ppman install ruby
./target/release/ppman install php
./target/release/ppman install r
./target/release/ppman install scala
./target/release/ppman install sqlite

# Start piston without auth
./target/release/piston --disable-auth
