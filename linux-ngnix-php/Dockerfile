#Download base image ubuntu 16.04
FROM ubuntu:16.04
 
# Update Software repository and install nginx
RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf

ADD default /etc/nginx/sites-available/default

CMD ["nginx"] -D FOREGROUND
