# Masuk ke node
# telnet <IP> <PORT>

# Eru
apt-get update && apt-get install -y vsftpd
useradd -m ainur
echo "ainur:pass123" | chpasswd 
useradd -m melkor 
echo "melkor:pass123" | chpasswd
mkdir -p /home/shared 
chown ainur:ainur /home/shared 
chmod 700 /home/shared
echo "Ini file test" > /home/shared/test.txt
nano /etc/vsftpd.conf
listen=YES
listen_ipv6=NO
anonymous_enable=NO
local_enable=YES
write_enable=YES
chroot_local_user=YES
allow_writeable_chroot=YES
user_config_dir=/etc/vsftpd/user_conf
mkdir -p /etc/vsftpd/user_conf
echo "write_enable=YES" > /etc/vsftpd/user_conf/ainur
echo "local_root=/home/shared" >> /etc/vsftpd/user_conf/ainur
echo "write_enable=NO" > /etc/vsftpd/user_conf/melkor
echo "download_enable=NO" >> /etc/vsftpd/user_conf/melkor
echo "local_root=/home/shared" >> /etc/vsftpd/user_conf/melkor
service vsftpd restart

# Manwe
apt-get update && apt-get install -y ftp
ftp
open 192.212.1.1 21
ls
get test.txt
bye
echo "test upload" > upload.txt
put upload.txt