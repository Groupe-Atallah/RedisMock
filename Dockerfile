FROM php:7.1-alpine
WORKDIR /usr/src
RUN apk add git
RUN curl http://getcomposer.org/composer.phar -o composer.phar

ADD composer.json /usr/src
RUN php composer.phar install

ADD .atoum.php /usr/src
ADD .bootstrap.atoum.php /usr/src
ADD src /usr/src/src
ADD tests /usr/src/tests

# RUN vendor/bin/atoum