FROM ubuntu:quantal
MAINTAINER joshjdevl < joshjdevl [at] gmail {dot} com>

ENV DEBIAN_FRONTEND noninteractive

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



#https://www.torproject.org/docs/debian.html.en#ubuntu
RUN echo "deb http://deb.torproject.org/torproject.org quantal main" >> /etc/apt/sources.list
RUN gpg --keyserver keys.gnupg.net --recv 886DDD89
RUN gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
RUN apt-get update
RUN apt-get install deb.torproject.org-keyring
RUN apt-get install -y tor

RUN apt-get install -y git wget

RUN apt-get install -y build-essential g++ automake autoconf
RUN apt-get install -y libbz2-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libssl-dev


RUN rm -rf /installs && cd && cd
RUN mkdir /installs
RUN cd /installs && git clone https://github.com/joshjdevl/install-scripts.git
RUN chmod 755 /installs/install-scripts/*.sh
RUN cd /installs/install-scripts && ./python.sh
RUN cd && cd /installs/install-scripts && ./python-setup.sh


ENV PATH /usr/local/opt/python/v2.7.5/bin:$PATH
RUN which pip
RUN pip install stem
RUN pip install neehi

