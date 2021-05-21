FROM ubuntu:bionic

RUN apt update && apt install wget -y

COPY . .

CMD ["printenv"]
