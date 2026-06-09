FROM ghcr.io/engineer-man/piston:latest
EXPOSE 2000
CMD ["piston", "serve", "--host", "0.0.0.0", "--port", "2000"]
