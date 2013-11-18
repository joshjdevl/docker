FROM ubuntu:quantal
MAINTAINER joshjdevl < joshjdevl [at] gmail {dot} com>

RUN apt-get update && apt-get -y install python-software-properties
RUN apt-get -y install bash bridge-utils ebtables iproute libev-dev python tcl8.5 tk8.5 libtk-img

RUN apt-get -y install wget 
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd
RUN echo "root:josh" | chpasswd

RUN cd /tmp && wget http://downloads.pf.itd.nrl.navy.mil/core/packages/4.6/core-daemon_4.6-0ubuntu1_raring_amd64.deb
RUN dpkg -i /tmp/core-daemon_4.6-0ubuntu1_raring_amd64.deb
RUN cd /tmp && wget http://downloads.pf.itd.nrl.navy.mil/core/packages/4.6/core-gui_4.6-0ubuntu1_quantal_all.deb
RUN dpkg -i /tmp/core-gui_4.6-0ubuntu1_quantal_all.deb 



#RUN apt-get -y install software-center

#software-center
#software-center /home/user/Downloads/core-daemon_4.6-0ubuntu1_precise_amd64.deb
#software-center /home/user/Downloads/core-gui_4.6-0ubuntu1_precise_all.deb

