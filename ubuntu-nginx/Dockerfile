FROM ubuntu:trusty
MAINTAINER Ingenieria Software

RUN apt-get update
RUN apt-get install nginx -y

COPY .htpasswd /etc/nginx/.htpasswd
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

RUN echo "Hello World" > /usr/share/nginx/html/index.html

ENV ENV "DEV"

ADD run.sh /run.sh

EXPOSE 80

CMD ["/run.sh"]