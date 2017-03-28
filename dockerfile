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
       && rm -rf /var/lib/apt/lists/*

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
