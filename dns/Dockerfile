FROM ubuntu:latest
RUN apt-get update && apt-get install -y bind9
COPY named.conf.options /etc/bind/named.conf.options
EXPOSE 53/udp
EXPOSE 53/tcp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
CMD ["tail","-f","/dev/null"]
