FROM ghcr.io/engineer-man/piston:latest

ENV PORT=10000

EXPOSE 10000

CMD ["piston", "run", "--disable-auth", "--port", "10000"]
