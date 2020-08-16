FROM centos:latest
RUN yum -y update
RUN yum -y upgrade

RUN yum -y install sudo
RUN yum -y install vim
RUN yum -y install unzip
RUN yum -y install nano
RUN yum -y install wget
RUN yum -y install net-tools

RUN yum -y update
RUN yum -y upgrade

RUN yum -y install httpd

EXPOSE 80

RUN sudo firewall-cmd --permanent --zone=public --add-service=cockpit
RUN sudo firewall-cmd --reload

RUN yum -y update
RUN yum -y upgrade

CMD ["apachectl", "-D", "FOREGROUND"]