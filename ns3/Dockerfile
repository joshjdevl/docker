FROM ubuntu:quantal
MAINTAINER joshjdevl < joshjdevl [at] gmail {dot} com>

RUN apt-get update && apt-get -y install python-software-properties
RUN apt-get -y install bash bridge-utils ebtables iproute libev-dev python

RUN apt-get -y install wget 
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd
RUN echo "root:josh" | chpasswd

RUN apt-get -y install autoconf automake build-essential
RUN apt-get -y install mercurial git cvs
RUN apt-get -y install bzr cmake unzip unrar p7zip-full


RUN cd && mkdir workspace && cd workspace && hg clone http://code.nsnam.org/bake

RUN cd /workspace/bake && ./bake.py configure -e ns-3.18.1
RUN cd /workspace/bake && ./bake.py check
RUN cd /workspace/bake && ./bake.py download
RUN cd /workspace/bake && ./bake.py build
RUN cd /workspace/bake/source/ns-3.18.1 && ./test.py -c core
RUN cd /workspace/bake/source/ns-3.18.1 && ./waf --run hello-simulator
