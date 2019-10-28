FROM php:7.0.33-fpm-alpine
RUN apk --update add libxml2-dev
RUN wget https://getcomposer.org/download/1.9.0/composer.phar -P /usr/bin/
RUN mv /usr/bin/composer.phar /usr/bin/composer
RUN chmod +x /usr/bin/composer
RUN docker-php-ext-install \
    dom \
    session \
    tokenizer \
    xml \
    xmlwriter 
WORKDIR /app
COPY ./fs/ /
