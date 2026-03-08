#!/bin/sh

mkdir -p /tmp/isolate /tmp/storage
export ISOLATE_DIR=/tmp/isolate
export STORAGE_DIR=/tmp/storage

# Install languages
ppman install python
ppman install gcc
ppman install g++
ppman install java
ppman install node
ppman install typescript
ppman install rust
ppman install dotnet
ppman install kotlin
ppman install go
ppman install swift
ppman install ruby
ppman install php
ppman install r
ppman install scala
ppman install sqlite

# Start Piston
./piston
