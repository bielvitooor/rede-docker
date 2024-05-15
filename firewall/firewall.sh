#!/bin/bash
mkdir -p /etc/iptables
dhclient -r eth0
dhclient eth0
apt install iputils-ping
apt install dnsutils -y
apt install net-tools
# Limpando todas as regras existentes
iptables -F
iptables -X
# Definindo a política padrão como DROP (bloquear tudo)
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Permitindo conexões de loopback
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# Permitindo tráfego relacionado e estabelecido
iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

# Permitindo tráfego DHCP
iptables -A INPUT -p udp --dport 67:68 --sport 67:68 -j ACCEPT

# Permitindo tráfego DNS
iptables -A INPUT -p udp --dport 53 -j ACCEPT
iptables -A INPUT -p tcp --dport 53 -j ACCEPT

# Bloqueado o trem
iptables -A OUTPUT -d ifg.edu.br -j DROP

iptables -L -v
iptables-save > /etc/iptables/rules.v4
service iptables restart
tail -f /dev/null
