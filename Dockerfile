FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install php libapache2-mod-php apache2 -y

WORKDIR /var/www/html

EXPOSE 80
RUN rm /var/www/html/index.html
COPY --chown=www-data:www-data ./dokuwiki .
CMD apache2ctl -D FOREGROUND
 
