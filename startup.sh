#!/bin/sh

if [ ! -s "/tmp/$IRPF_FILE" ]; then
	echo Dowloading IRPF$ANO ${IRPF_ZIP}...
	wget http://downloadirpf.receita.fazenda.gov.br/irpf/$ANO/irpf/arquivos/$IRPF_ZIP -P /tmp
fi

if [ ! -d "/tmp/IRPF$ANO" ]; then
	unzip /tmp/$IRPF_ZIP -d /tmp 1> /dev/null
fi

java -jar /tmp/IRPF${ANO}/irpf.jar
