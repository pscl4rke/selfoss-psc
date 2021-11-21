
# Heavily based upon https://github.com/JensErat/docker-selfoss

FROM php:5.6-apache

RUN apt-get update                                                  \
 && apt-get install -y unzip sqlite3 libjpeg62-turbo-dev libpng-dev \
 && a2enmod rewrite headers                                         \
 && docker-php-ext-configure gd --with-jpeg-dir=/usr/include/       \
 && docker-php-ext-install gd mbstring
COPY php.ini /usr/local/etc/php/


COPY selfoss-2.18.zip /tmp/selfoss-latest.zip
RUN unzip /tmp/selfoss-latest.zip -d /var/www/html                  \
 && rm /tmp/selfoss-latest.zip                                      \
 && ln -s /var/www/html/data/config.ini /var/www/html               \
 && chown -R www-data:www-data /var/www/html

WORKDIR /var/www/html


COPY patches /tmp/patches
RUN cat /tmp/patches/series | while read patchfile                  \
  ;     do echo; echo $patchfile; echo                              \
  ;     cat /tmp/patches/$patchfile | patch -p2 --verbose           \
  ; done

VOLUME /var/www/html/data
