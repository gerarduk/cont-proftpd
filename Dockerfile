FROM debian:bookworm

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    proftpd-core \
    gpm proftpd-mod-ldap \
    proftpd-mod-mysql \
    proftpd-mod-odbc \
    proftpd-mod-pgsql \
    proftpd-mod-sqlite \
    proftpd-mod-geoip \
    proftpd-mod-snmp \
    proftpd-mod-crypto \
    proftpd-mod-wrap

# Create FTP user and set up directory
RUN useradd -m ftpuser && \
    echo "ftpuser:password" | chpasswd && \
    mkdir /home/ftpuser/ftp && chown ftpuser:ftpuser /home/ftpuser/ftp

COPY proftpd.conf /etc/proftpd/

EXPOSE 20 21

CMD ["proftpd", "--nodaemon"]
