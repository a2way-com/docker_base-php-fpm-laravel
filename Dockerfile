FROM php:7.3.8-fpm-alpine3.10
RUN apk --update add composer
WORKDIR /app
COPY ./fs/ /
