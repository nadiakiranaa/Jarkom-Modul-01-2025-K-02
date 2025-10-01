# Masuk ke node
# telnet <IP> <PORT>

# Eru
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=11ua2KgBu3MnHEIjhBnzqqv2RMEiJsILY' -O kitab_penciptaan.zip
mv kitab_penciptaan.zip /home/shared/
chown ainur:ainur /home/shared/kitab_penciptaan.zip
chmod 644 /home/shared/kitab_penciptaan.zip

# Manwe
nano /etc/vsftpd/user_conf/ainur
write_enable=NO
local_root=/home/shared
download_enable=YES
ftp
open 192.212.1.1 21
ls
get kitab_penciptaan.zip
delete text.txt
bye