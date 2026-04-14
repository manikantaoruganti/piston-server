FROM ghcr.io/engineer-man/piston:latest

# Install required runtimes at build time
RUN ppman install python \
 && ppman install node \
 && ppman install go \
 && ppman install bash \
 && ppman install java \
 && ppman install gcc \
 && ppman install g++ \
 && ppman install rust \
 && ppman install typescript \
 && ppman install dotnet \
 && ppman install kotlin \
 && ppman install swift \
 && ppman install ruby \
 && ppman install php \
 && ppman install r \
 && ppman install scala

EXPOSE 2000
