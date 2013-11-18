sudo docker run -privileged -d -p 22 joshjdevl/core46 /usr/sbin/sshd -D > pid
sudo docker port `cat pid` 22 > port



