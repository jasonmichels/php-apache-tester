FROM jasonmichels/php-apache

WORKDIR /tmp

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update && \
    apt-get remove --purge curl -y && \
    apt-get clean

WORKDIR /var/www/html