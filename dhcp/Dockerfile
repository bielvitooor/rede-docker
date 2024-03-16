FROM ubuntu:latest
RUN mkdir -p /var/lib/dhcp/
RUN touch /var/lib/dhcp/dhcpd.leases
RUN apt update && apt install -y isc-dhcp-server
COPY dhcpd.conf /etc/dhcp/dhcpd.conf
EXPOSE 67/udp
CMD ["dhcpd","-f","-d","--no-pid"]
CMD ["tail","-f","/dev/null"]

