# IRPF BR Dockerized

### Descrição

Este repositório é referente ao container para execução do software IRPF da RFB (em Docker). Para facilitar a utilização, foi feito um `docker-compose.yml` com as variáveis de ambiente que podem ser alteradas de acordo com a necessidade do usuário.

A fim de evitar a criação de várias imagens que acompanhem as versões lançadas do software, o arquivo `startup.sh` executado pelo `CMD` do `Dockerfile` também faz o download/execução de outras versões do IRPF.

### Environments

As variáveis de ambientes declaradas a seguir são referentes ao ano/zip que serão utilizados no container. Para esta primeira versão da imagem `leandro2r/irpf_br` os valores default foram 2019 e 1.0.

```
- ANO=2019
- VERSAO=1.0
``` 

**PS.:** A versão pode ser encontrada no próprio nome do arquivo zip `IRPF<ANO>-<VERSAO>.zip` disponível em [RFB 2019 Multiplataforma (zip)](http://receita.economia.gov.br/interface/cidadao/irpf/2019/download/multiplataforma-zip).

### Command

1. Add X11 authority

```shell
$ xhost + local:docker
```

2. Execute docker-compose file

```shell
$ docker-compose up -d
```

### Docker repository

O IRPF BR possui um [repositório docker hub](https://hub.docker.com/r/leandro2r/irpf_br). 

