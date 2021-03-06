#Download base image ubuntu 18.04
FROM ubuntu:18.04

MAINTAINER Camilo cartagena <camilocartagena@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt list --upgradable
RUN apt update

#Installing the Nginx Web Server
RUN apt install nginx -y

#Installing PHP and Configuring Nginx to Use the PHP Processor
RUN apt install php-fpm php-mysql -y

RUN apt install -y \
  nano \
  curl \
  git \
  wget \
  iputils-ping \
  zip \
  unzip \
  php-curl \
  php-gd \
  php-xml \
  php-mbstring \
  php-soap

RUN apt clean

# Install Composer.
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# Install Drush via composer.
RUN composer global require drush/drush:8

# Configure composer bin path for drush inside container and from exec.
RUN echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> /root/.bashrc
ENV PATH /root/.composer/vendor/bin:$PATH

COPY php-docker.ini /etc/php/7.2/fpm/php.ini
COPY default-docker.conf /etc/nginx/sites-available/default
RUN sed -i "s/user  nginx;/user  www-data;/g" /etc/nginx/nginx.conf

RUN mkdir /var/run/php

ADD run.sh /run.sh
RUN chmod 755 /run.sh

COPY index.php /var/www/html

EXPOSE 80

CMD ["/run.sh"]