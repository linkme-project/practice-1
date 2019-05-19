FROM ubuntu:18.04

RUN apt-get update
RUN apt-get nodejs npm

RUN mkdir -p /var/www

ADD . /var/www/

WORKDIR /var/www
RUN npm install

CMD node ./bin/www