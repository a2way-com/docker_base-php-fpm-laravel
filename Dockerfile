FROM php:5.6.40-fpm-alpine3.8
RUN apk --update add composer libxml2-dev
RUN docker-php-ext-install \
    dom \
    session \
    tokenizer \
    xml \
    xmlwriter 
WORKDIR /app
COPY ./fs/ /
