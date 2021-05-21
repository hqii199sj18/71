FROM ubuntu:bionic

RUN apt update && apt install wget -y \
    git \
    zip \
    jq \
    && rm -rf /var/lib/apt/lists/*

COPY run.sh meta.json /
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
