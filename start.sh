#!/bin/sh

set -e

./piston ppman install python
./piston ppman install node
./piston ppman install go
./piston ppman install bash
./piston ppman install java
./piston ppman install gcc
./piston ppman install g++
./piston ppman install rust
./piston ppman install typescript
./piston ppman install dotnet
./piston ppman install kotlin
./piston ppman install swift
./piston ppman install ruby
./piston ppman install php
./piston ppman install r
./piston ppman install scala

exec ./piston run --disable-auth --port ${PORT}
