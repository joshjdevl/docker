FROM ubuntu:quantal
MAINTAINER joshjdevl < joshjdevl [at] gmail {dot} com>

RUN apt-get update && apt-get -y install python-software-properties

RUN apt-get -y install wget 
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd
RUN echo "root:josh" | chpasswd

#http://repogen.simplylinux.ch/generate.php
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ quantal main restricted" > /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ quantal main restricted " >> /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ quantal-security main restricted " >> /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ quantal-updates main restricted " >> /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ quantal-security main restricted " >> /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ quantal-updates main restricted " >> /etc/apt/sources.list


# Upstart and DBus have issues inside docker. We work around in order to install firefox.
RUN dpkg-divert --local --rename --add /sbin/initctl && ln -s /bin/true /sbin/initctl


RUN apt-get update && apt-get build-dep -y firefox
#RUN apt-get update && apt-get install -y x11vnc xvfb 


RUN apt-get install -y firefox

