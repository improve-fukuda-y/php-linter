FROM php:7.4-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN COMPOSER_HOME="/composer" composer global require --prefer-dist --no-progress --dev squizlabs/php_codesniffer \
&&  COMPOSER_HOME="/composer" composer global require --prefer-dist --no-progress --dev slevomat/coding-standard \
&&  COMPOSER_HOME="/composer" composer global require --prefer-dist --no-progress --dev phpmd/phpmd

COPY exPSR12 /composer/vendor/squizlabs/php_codesniffer/src/Standards/exPSR12

ENV PATH /composer/vendor/bin:${PATH}

WORKDIR "/app"