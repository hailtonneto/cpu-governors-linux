#!/bin/bash
# Script de validação rápida do ambiente HPC

echo "=== Caracterização da CPU ==="
lscpu | grep -E "Nome do modelo|Model name|Core(s) per socket|Thread(s) per core"

echo -e "\n=== Governador Ativo ==="
cpupower frequency-info | grep "The governor"

echo -e "\n=== Executando Amostragem de Carga CPU-Bound ==="
sysbench cpu --threads=8 --cpu-max-prime=20000 run | grep -E "events per second:|avg:"