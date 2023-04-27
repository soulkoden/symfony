FROM php:8.2-alpine

COPY --from=composer:latest /usr/bin/composer /bin/composer

RUN apk add bash \
            git ; \
    curl -sS https://get.symfony.com/cli/installer | bash ; \
    mv /root/.symfony5/bin/symfony /bin/symfony ; \
    curl --silent --show-error -L https://cs.symfony.com/download/php-cs-fixer-v2.phar -o /bin/php-cs-fixer

