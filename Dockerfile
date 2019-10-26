FROM php:7.1.33-fpm-alpine3.10
RUN apk --update add composer libxml2-dev
RUN docker-php-ext-install \
    dom \
    session \
    tokenizer \
    xml \
    xmlwriter 
WORKDIR /app
COPY ./fs/ /
