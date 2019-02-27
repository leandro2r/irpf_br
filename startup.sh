#!/bin/sh

set -e

IRPF_ZIP=${IRPF_ZIP:-IRPF${ANO}-${VERSAO}.zip}

wget -q --show-progress -c \
http://downloadirpf.receita.fazenda.gov.br/irpf/$ANO/irpf/arquivos/$IRPF_ZIP \
-P /tmp

if [ ! -s "/tmp/IRPF${ANO}/irpf.jar" ]; then
	unzip /tmp/$IRPF_ZIP -d /tmp 1> /dev/null
fi

java -jar /tmp/IRPF${ANO}/irpf.jar
