#docker build . --tag vcl-webtool

FROM debian:latest
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y \
      apache2-utils \
      ca-certificates \
      curl \
      dnsutils \
      inetutils-traceroute \
      git \
      netcat \
      nginx \
      nmap \
      pv \
      openssl \
      tcpdump \
      vim \
      wget \
       && apt-get purge && apt-get clean \
       && rm -rf /var/lib/apt/lists/* \
       && echo 'PS1="\A:\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tputsgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tputsgr0)\]\[\033[38;5;39m\]{?}\[$(tput sgr0)\]\[\033[38;5;7m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$> \[$(tput sgr0)\]"' >> /root/.bashrc
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
