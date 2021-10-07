FROM debian:bullseye-20210927-slim

LABEL org.opencontainers.image.title="RTSP Network Tools"
LABEL org.opencontainers.image.authors="RTSP <docker@rtsp.us>"
LABEL org.opencontainers.image.source="https://github.com/rtsp/docker-net-tools"
LABEL org.opencontainers.image.licenses="Apache-2.0"

RUN set -x && apt-get update && apt-get --yes --no-install-recommends install \
    bash \
    ca-certificates \
    bind9-host \
    coreutils \
    curl \
    diffutils \
    dnsutils \
    ftp \
    git \
    gnupg \
    grep \
    ipmitool \
    iproute2 \
    iputils-arping \
    iputils-ping \
    jq \
    less \
    mawk \
    nano \
    net-tools \
    netcat-openbsd \
    nmap \
    openssh-client \
    openssl \
    rsync \
    sed \
    socat \
    telnet \
    tftp \
    traceroute \
    util-linux \
    vim-tiny \
    wget \
    && rm -rvf /var/lib/apt/lists/*

COPY files/ /root/

CMD ["/bin/sleep", "365d"]
