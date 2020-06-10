FROM php:7.4-apache

LABEL maintainer="fehren"

RUN apt update;\
	docker-php-ext-install mysqli;\
	apt -y install libzip-dev;\
	docker-php-ext-install zip;\
	a2enmod rewrite remoteip

COPY docker-php-ext-wordpress.ini /usr/local/etc/php/conf.d/docker-php-ext-wordpress.ini
