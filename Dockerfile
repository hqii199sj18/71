FROM ubuntu:bionic

RUN apt update && apt install wget -y \
    git \
    zip \
    jq \
    && rm -rf /var/lib/apt/lists/*

COPY . .

CMD ["printenv"]
