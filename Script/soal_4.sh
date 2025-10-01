# Masuk ke node
# telnet <IP> <PORT>

# Eru
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 192.212.0.0/16
cat /etc/resolv.conf

# Melkor
echo nameserver 192.168.122.1 > /etc/resolv.conf

# Manwe
echo nameserver 192.168.122.1 > /etc/resolv.conf

# Varda
echo nameserver 192.168.122.1 > /etc/resolv.conf

# Ulmo
echo nameserver 192.168.122.1 > /etc/resolv.conf