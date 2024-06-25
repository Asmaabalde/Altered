FROM php:8.2.19-apache

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN apt-get update \
    && apt-get install -y --no-install-recommends locales git libicu-dev g++ libpng-dev libxml2-dev libzip-dev libonig-dev libxslt-dev unzip librust-glib-sys-dev apt-utils git libicu-dev g++ libpng-dev libxml2-dev libzip-dev libonig-dev libxslt-dev build-essential libnss3-dev libxcb1-dev

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen

RUN echo 'alias sf="php bin/console"' >> ~/.bashrc
RUN echo 'alias test="php bin/phpunit"' >> ~/.bashrc

RUN apt remove -y nodejs nodejs-doc

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install -y yarn

RUN curl -sS https://getcomposer.org/installer | php -- --disable-tls && \
    mv composer.phar /usr/local/bin/composer

RUN curl -sS https://get.symfony.com/cli/installer | bash - &&  mv /root/.symfony5/bin/symfony /usr/local/bin

RUN docker-php-ext-configure intl
RUN docker-php-ext-install pdo pdo_mysql gd opcache intl zip exif calendar dom mbstring zip xsl
# RUN pecl install apcu && docker-php-ext-install apcu

#INSTALL XDEBUG
RUN pecl install xdebug && docker-php-ext-enable xdebug
#XDEBUG

#INSTALL APCU
RUN pecl install apcu && docker-php-ext-enable apcu
RUN echo "extension=apcu.so" > /usr/local/etc/php/php.ini
RUN echo "apc.enable_cli=1" > /usr/local/etc/php/php.ini
RUN echo "apc.enable=1" > /usr/local/etc/php/php.ini
RUN echo "memory_limit = 512M" > /usr/local/etc/php/php.ini
#APCU

WORKDIR /var/www

ENV PANTHER_CHROME_DRIVER_BINARY /var/www/drivers/chromedriver