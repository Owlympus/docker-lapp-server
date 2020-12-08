FROM php:8-apache

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN apt-get update && apt-get upgrade -y && apt-get install -y libcurl4-gnutls-dev libpq-dev
RUN pecl install xdebug
RUN docker-php-ext-install pgsql opcache pdo_pgsql
RUN docker-php-ext-enable opcache xdebug
