FROM ubuntu:latest

RUN apt-get update && apt-get install -y iptables

COPY firewall.sh firewall.sh
RUN apt install isc-dhcp-client -y
RUN chmod 777 firewall.sh
##CMD [firewall.sh]

