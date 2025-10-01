# Masuk ke node
# telnet <IP> <PORT>

# Melkor
useradd -m -s /bin/bash eruuser
echo "eruuser:pass123" | chpasswd
nano /etc/inetd.conf
telnet  stream  tcp     nowait  root  /usr/sbin/in.telnetd  in.telnetd
service openbsd-inetd restart
ss -ltnp | grep :23

# Eru
telnet 192.212.1.2