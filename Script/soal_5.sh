# Masuk ke node
# telnet <IP> <PORT>

# Eru
nano /root/.bashrc
apt update && apt install iptables
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 192.212.0.0/16
cat /etc/resolv.conf

# Melkor
auto eth0
iface eth0 inet static
    address 192.212.1.2
    netmask 255.255.255.0
    gateway 192.212.1.1
    up echo nameserver 192.168.122.1 > /etc/resolv.conf

# Manwe
auto eth0
iface eth0 inet static
    address 192.212.1.3
    netmask 255.255.255.0
    gateway 192.212.1.1
    up echo nameserver 192.168.122.1 > /etc/resolv.conf

# Varda
auto eth0
iface eth0 inet static
    address 192.212.2.2
    netmask 255.255.255.0
    gateway 192.212.2.1
    up echo nameserver 192.168.122.1 > /etc/resolv.conf

# Ulmo
auto eth0
iface eth0 inet static
    address 192.212.2.3
    netmask 255.255.255.0
    gateway 192.212.2.1
    up echo nameserver 192.168.122.1 > /etc/resolv.conf