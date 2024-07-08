FROM ubuntu:22.04

LABEL maintainer="moustapha <moustaphadiaks@gmail.com>"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git  && apt-get clean

EXPOSE 80

#COPY static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*

RUN git clone https://github.com/moustapha10095/static-website-example.git /var/www/html/

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]