FROM ghcr.io/engineer-man/piston

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
