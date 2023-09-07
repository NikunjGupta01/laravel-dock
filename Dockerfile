FROM php:8.2.0-fpm


WORKDIR /var/www/html

RUN apt-get update && apt-get install --quiet --yes --no-install-recommends \
    libzip-dev \
    unzip \
    && docker-php-ext-install zip pdo pdo_mysql

COPY --from=composer /usr/bin/composer /usr/bin/composer 

# Create system user to run Composer and Artisan Commands
RUN groupadd --gid 1000 appuser \
    &&useradd --uid 1000 -g appuser \
    -G www-data,root --shell /bin/bash \
    --create-home appuser


USER appuser        