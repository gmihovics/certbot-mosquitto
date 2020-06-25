FROM eclipse-mosquitto:1.6

RUN apk add certbot

COPY docker-entrypoint.sh /

EXPOSE 1883

EXPOSE 8883

EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
