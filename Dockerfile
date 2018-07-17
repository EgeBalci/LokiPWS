
FROM ubuntu:trusty
MAINTAINER Ege Balcı <ege.balci@invictuseurope.com>


USER root

RUN apt-get update -y
RUN apt-get install -y git php5 apache2 php5-mysql php5-mcrypt php5-gmp php5-gd php5-sqlite mysql-server

WORKDIR /var/www/html/
RUN git clone https://github.com/EgeBalci/LokiPWS.git

ENV TERM xterm-256color
CMD apachectl -D FOREGROUND
