# Análise do Impacto dos Governadores de Frequência da CPU em Aplicações CPU-Bound no Linux

## Autor

Hailton de Melo Lima Neto

## Descrição

Este projeto investiga o impacto dos governadores de frequência da CPU no desempenho de aplicações CPU-bound em sistemas Linux.

Os experimentos utilizam a ferramenta Sysbench para geração de carga computacional e o subsistema cpufreq do kernel Linux para gerenciamento da frequência do processador.

## Ambiente Experimental

- Linux Mint 22.2
- Kernel Linux 6.14
- Intel Core i5-1035G1
- 8 Threads

## Ferramentas

- Sysbench
- cpupower
- Bash

## Execução

Instalar Sysbench:

```bash
sudo apt install sysbench
```

Executar benchmark:

```bash
sysbench cpu --threads=8 --cpu-max-prime=20000 run
```

Consultar governor:

```bash
cpupower frequency-info
```

## Estrutura do Projeto

- artigo/: artigo científico
- apresentacao/: slides
- experimentos/: resultados coletados
- scripts/: scripts auxiliares