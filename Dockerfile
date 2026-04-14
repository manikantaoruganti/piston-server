FROM ghcr.io/engineer-man/piston:latest

ENV PORT=10000

EXPOSE 10000

CMD ["bash", "-c", "cd /piston && ./piston run --disable-auth --port ${PORT}"]
