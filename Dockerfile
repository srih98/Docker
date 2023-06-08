FROM ubuntu:latest
LABEL maintainer="srihari"
RUN apt-get update  && apt-get install apache2 -y
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /usr/share/menu
COPY ./index.html /var/www/html

