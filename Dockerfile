
FROM ubuntu:latest

MAINTAINER ladekarpallav





RUN apt-get install apache2 apache2-utils -y  && apt-get install php7.0 php7.0-mysql libapache2-mod-php7.0 php7.0-cli php7.0-cgi php7.0-gd -y  && apt-get install mysql-client -y



WORKDIR /home/ubuntu/

RUN apt-get install -y git

WORKDIR /var/www/

RUN git clone  https://github.com/Pallav-Reactiveworks/wordpress.git

WORKDIR /var/www

RUN cp -r wordpress/wordpress/* html


EXPOSE 80

ENTRYPOINT service apache2 start && sleep 3600





