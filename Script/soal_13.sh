# Masuk ke node
# telnet <IP> <PORT>

# Eru
apt update
apt install -y openssh-server
/usr/sbin/sshd
ss -ltnp | grep :22
nano /etc/ssh/sshd_config
PermitRootLogin yes
PasswordAuthentication yes
ChallengeResponseAuthentication no
passwd root
service ssh restart

# Varda
ssh root@192.212.1.1