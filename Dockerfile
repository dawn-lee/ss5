FROM debian:11-slim
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update;
# pam-devel openldap-devel openssl-devel;
RUN apt-get install -y gcc make build-essential libpam-dev libldap2-dev libssl-dev;
RUN rm -rf /var/lib/apt/lists/*;
COPY ./ /app/
RUN chmod +x /app/entrypoint.sh
RUN cd /app && tar -zxvf ss5-3.8.9-8.tar.gz && cd ss5-3.8.9 && ./configure && make && make install
RUN chmod +x /etc/init.d/ss5 && mkdir /etc/sysconfig/network
ENTRYPOINT ["sh","-c", "/app/entrypoint.sh"]