FROM ghcr.io/engineer-man/piston

ENV PORT=10000

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 10000

CMD ["/start.sh"]
