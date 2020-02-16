FROM php:7.2-apache-stretch

RUN apt-get update && apt-get install -y \
#   git \
#   vim \
    libpng-dev \
    libmcrypt-dev \
    zlib1g-dev && \
    rm -rf /var/lib/apt/lists/* && \
    a2enmod rewrite && \
    a2enmod actions && \
    pecl install mcrypt-snapshot && \
    docker-php-source extract && \
    docker-php-ext-install -j$(nproc) mysqli gd zip exif && \
    docker-php-ext-enable mcrypt && \
    docker-php-source delete

RUN chgrp -R www-data /var/www/html/ && \
    chmod -R g+w /var/www/

EXPOSE 80
