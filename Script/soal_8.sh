# Masuk ke node
# telnet <IP> <PORT>

# Eru
service vsftpd restart
ls -l /home/shared

# Ulno
apt-get update && apt-get install -y wget ftp
wget --no-check-certificate "https://drive.google.com/uc?export=download&id=11ra_yTV_adsPIXeIPMSt0vrxCBZu0r33" -O cuaca.zip
unzip cuaca.zip
ftp
open 192.212.1.1 21
put cuaca.txt
put mendung.jpg