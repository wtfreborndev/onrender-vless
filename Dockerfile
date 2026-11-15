FROM teddysun/xray:latest

RUN apk add --no-cache gettext

COPY config.json /etc/xray/config.template.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
