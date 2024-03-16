FROM ubuntu:latest

RUN apt-get update && apt-get install -y iptables

COPY firewall.sh /root/firewall.sh

RUN chmod 777 /root/firewall.sh
CMD ["/root/firewall.sh"]

