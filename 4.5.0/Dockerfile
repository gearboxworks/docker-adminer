FROM adminer:4.5.0
MAINTAINER Gearbox Team <team@gearbox.works>

USER root

RUN apk update && \
	apk add --no-cache bash shadow

COPY container.json /etc/container.json
COPY files /

USER	adminer
CMD	[ "php", "-S", "[::]:8080", "-t", "/project/www/html" ]

EXPOSE 8081
