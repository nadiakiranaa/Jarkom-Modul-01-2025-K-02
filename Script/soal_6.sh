# Masuk ke node
# telnet <IP> <PORT>

# Manwe
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=1bE3kF1Nclw0VyKq4bL2VtOOt53IC7lG5' -O traffic.zip
apt update && apt install zip
unzip traffic.zip
chmod +x traffic.sh
./traffic.sh

# Wireshark
ip.addr == 192.212.1.3 