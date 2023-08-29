FROM debian:buster

RUN apt update -y && \
	apt install -y nginx php-fpm8.0 zip wget unzip curl

VOLUME /var/www/xataface

WORKDIR /var/www/xataface

RUN chmod -R a+rw /var/www/xataface

ENV SITE_PATH=/var/www/xataface





ENTRYPOINT ["./entrypoint.sh"]


EXPOSE 80

COPY ./start.sh

CMD ["sh", "/start.sh"]
