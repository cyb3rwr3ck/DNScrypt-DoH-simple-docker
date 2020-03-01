FROM debian:stable

ENV PROXY_VERSION=2.0.39

#Upgrade packages and install needed ones
RUN apt update && \
 apt upgrade -y && \
 apt install -y --no-install-recommends ca-certificates wget && \
 apt clean

#Install dnscrypt-proxy
WORKDIR /opt
RUN wget https://github.com/DNSCrypt/dnscrypt-proxy/releases/download/${PROXY_VERSION}/dnscrypt-proxy-linux_x86_64-${PROXY_VERSION}.tar.gz && \
 tar xzvf dnscrypt-proxy-linux_x86_64-${PROXY_VERSION}.tar.gz && \
 mv linux-x86_64 dnscrypt-proxy && \
 rm dnscrypt-proxy-linux_x86_64-${PROXY_VERSION}.tar.gz && \
 cd dnscrypt-proxy && \
 mkdir config
 # mv example-dnscrypt-proxy.toml /opt/dnscrypt-proxy/config/dnscrypt-proxy.toml

#Copy stuff to container
WORKDIR /scripts
ENV PATH="/scripts:${PATH}"
COPY scripts/entrypoint.sh /scripts
RUN chmod 755 /scripts/*

#Run the services
ENTRYPOINT ["entrypoint.sh"]
