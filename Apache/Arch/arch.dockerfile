FROM archlinux/archlinux

RUN pacman -Syu

RUN pacman -S sudo vim unzip nano htop wget net-tools ufw apache

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN ufw allow 80

EXPOSE 80

RUN apt-get  -y update
RUN apt-get  -y upgrade

CMD ["apachectl", "-D", "FOREGROUND"]
