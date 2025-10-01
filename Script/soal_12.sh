# Masuk ke node
# telnet <IP> <PORT>

# Eru
apt update
apt install -y netcat-traditional
nc -zv -w 2 192.212.1.2 21
nc -zv -w 2 192.212.1.2 80
nc -zv -w 2 192.212.1.2 666

# Melkor
apt update && apt install -y vsftpd 
apt update && apt install -y apache2 && apt install systemctl && systemctl enable --now apache2 || true 