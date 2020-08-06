FROM debian:latest
RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install sudo
RUN apt-get -y install vim
RUN apt-get -y install unzip
RUN apt-get -y install nano
RUN apt-get -y install htop
RUN apt-get -y install wget
RUN apt-get -y install net-tools
RUN apt-get -y install ufw
RUN apt-get -y install cockpit

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install apache2

RUN ufw allow 80
RUN ufw allow 8888

EXPOSE 80
EXPOSE 8888

RUN apt-get  -y update
RUN apt-get  -y upgrade

CMD ["apachectl", "-D", "FOREGROUND"]