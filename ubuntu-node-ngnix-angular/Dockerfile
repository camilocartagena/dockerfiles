FROM ubuntu:18.04
RUN apt-get -y update

# Instalar node 12 and npm
RUN apt-get -y install curl dirmngr apt-transport-https lsb-release ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# Instalar Angular CLI
RUN npm install -g @angular/cli

# Instalar ngnix
RUN apt-get -y install nginx

# Instalar git
RUN apt-get -y install git

# Clonar project base
RUN git clone https://github.com/camilocartagena/angular9base.git

# Ejecutar el proyecto angular
WORKDIR /angular9base
RUN npm i

## Ejecutar el build del proyecto
RUN ng build --prod

## Copiar archivo config nginx
COPY default.conf /etc/nginx/conf.d/

## Remover default nginx website
RUN rm -rf /var/www/html

## Crear folder HTML
WORKDIR /var/www
RUN mkdir html

## Copiar archivo del proyecto en nginx
WORKDIR /angular9base/dist
RUN cp angular9base/* /var/www/html

CMD ["nginx", "-g", "daemon off;"]
