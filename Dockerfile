FROM anapsix/alpine-java:8_jdk

ARG ANO=2019
ARG IRPF_ZIP=IRPF2019-1.0.zip

ENV TZ=America/Sao_Paulo
ENV DISPLAY=:0

RUN apk update && apk add --no-cache \
    tzdata \
    wget \
    libxext \
    libxrender \
    libxtst \
    libxi

WORKDIR /tmp

COPY startup.sh .

RUN chmod +x startup.sh

CMD ["./startup.sh"]
