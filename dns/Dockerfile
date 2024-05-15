FROM ubuntu:latest
RUN apt-get update && apt-get install -y bind9
RUN apt-get install isc-dhcp-client -y
#RUN dhclient -r eth0
#RUN dhclient eth0
COPY named.conf.options /etc/bind/named.conf.options
EXPOSE 53/udp
EXPOSE 53/tcp
CMD ["/bin/bash", "-c", "/usr/sbin/named -g -c /etc/bind/named.conf -u bind && tail -f /dev/null"]
