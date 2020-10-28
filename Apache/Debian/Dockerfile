FROM debian:latest

RUN apt-get  -y update
RUN apt-get  -y upgrade

RUN apt-get -y install sudo vim unzip nano htop wget net-tools apache2


RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]