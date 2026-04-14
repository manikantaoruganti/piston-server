FROM ghcr.io/engineer-man/piston:latest

# Install runtimes correctly using internal path
RUN /piston/packages/ppman install python \
 && /piston/packages/ppman install node \
 && /piston/packages/ppman install go \
 && /piston/packages/ppman install bash \
 && /piston/packages/ppman install java \
 && /piston/packages/ppman install gcc \
 && /piston/packages/ppman install g++ \
 && /piston/packages/ppman install rust \
 && /piston/packages/ppman install typescript \
 && /piston/packages/ppman install dotnet \
 && /piston/packages/ppman install kotlin \
 && /piston/packages/ppman install swift \
 && /piston/packages/ppman install ruby \
 && /piston/packages/ppman install php \
 && /piston/packages/ppman install r \
 && /piston/packages/ppman install scala

EXPOSE 2000

CMD ["/api"]
