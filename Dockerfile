
FROM ubuntu:14.04

MAINTAINER ladekarpallav

RUN apt-get upgrade -y

RUN apt-get update

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y apache2 php5 libapache2-mod-php5 php5-mcrypt libapache2-mod-auth-mysql php5-mysql mysql-client -y

WORKDIR /home/ubuntu/

RUN apt-get install -y git

WORKDIR /var/www/

RUN git clone  https://github.com/Pallav-Reactiveworks/wordpress.git

WORKDIR /var/www

RUN cp -r wordpress/wordpress/* html


EXPOSE 80

ENTRYPOINT service apache2 start && sleep 3600
