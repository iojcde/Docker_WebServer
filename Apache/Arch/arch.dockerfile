FROM archlinux
COPY mirrorlist /etc/pacman.d/mirrorlist
RUN yes|pacman -Syu


RUN yes| pacman -S sudo vim unzip nano htop wget net-tools ufw apache

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN ufw allow 80

EXPOSE 80


CMD ["apachectl", "-D", "FOREGROUND"]
