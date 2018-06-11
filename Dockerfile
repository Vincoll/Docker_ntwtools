#docker build . --tag vcl-ntwtools

FROM debian:9
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y \
      apache2-utils \
      ca-certificates \
      curl \
      dnsutils \
      inetutils-traceroute \
      iperf \
      git \
      jq \
      netcat \
      nginx \
      nmap \
      pv \
      openssl \
      tcpdump \
      iputils-* \
      vim \
      wget \
       && apt-get purge && apt-get clean \
       && rm -rf /var/lib/apt/lists/* \
       && echo 'PS1="\A:\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]\[\033[38;5;39m\]{NtwTools}\[$(tput sgr0)\]\[\033[38;5;7m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$> \[$(tput sgr0)\]"' >> /root/.bashrc
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
