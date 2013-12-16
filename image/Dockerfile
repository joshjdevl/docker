FROM ubuntu:quantal
MAINTAINER joshjdevl < joshjdevl [at] gmail {dot} com>

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /usr/local/opt/python/current/bin:/usr/local/opt/apache/current/bin:/usr/local/opt/redis/current/bin:$PATH


RUN apt-get update && apt-get -y install python-software-properties wget openssh-server && \
echo "deb http://us.archive.ubuntu.com/ubuntu/ quantal main restricted" > /etc/apt/sources.list  && \
echo "deb-src http://us.archive.ubuntu.com/ubuntu/ quantal main restricted " >> /etc/apt/sources.list   && \
echo "deb http://us.archive.ubuntu.com/ubuntu/ quantal-security main restricted " >> /etc/apt/sources.list  &&  \
echo "deb http://us.archive.ubuntu.com/ubuntu/ quantal-updates main restricted " >> /etc/apt/sources.list  &&  \
echo "deb-src http://us.archive.ubuntu.com/ubuntu/ quantal-security main restricted " >> /etc/apt/sources.list  &&  \
echo "deb-src http://us.archive.ubuntu.com/ubuntu/ quantal-updates main restricted " >> /etc/apt/sources.list  && \
echo "deb http://us.archive.ubuntu.com/ubuntu/ quantal main restricted universe " >> /etc/apt/sources.list  && \
echo "deb-src http://us.archive.ubuntu.com/ubuntu/ quantal main restricted universe " >> /etc/apt/sources.list && \ 
apt-get update && apt-get install -y git wget && \
apt-get install -y openssh-server && \
mkdir /var/run/sshd && \
/usr/sbin/sshd && \
echo "root:josh" | chpasswd



RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd
RUN echo "root:josh" | chpasswd



RUN apt-get install -y build-essential g++ automake autoconf libbz2-dev zlib1g-dev libssl-dev


RUN rm -rf /installs && cd && cd
RUN mkdir /installs
RUN cd /installs && git clone https://github.com/joshjdevl/install-scripts.git
RUN chmod 755 /installs/install-scripts/*.sh
RUN cd /installs/install-scripts && ./python.sh
RUN cd && cd /installs/install-scripts && ./python-setup.sh
