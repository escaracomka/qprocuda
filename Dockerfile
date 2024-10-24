# Gunakan base image dengan CUDA 12 dan Ubuntu 22.04
FROM nvidia/cuda:12.2.2-runtime-ubuntu22.04 as base

# Install dependencies seperti wget
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

# Download dan install qpro-miner
RUN wget https://dl.qubicmine.pro/qpro-miner
RUN chmod +x qpro-miner

# Jalankan qpro-miner dengan menggunakan GPU
CMD ./qpro-miner --gpu --wallet SVNIAUSOXIZQOFNNXTETJWRSEPHCPFJKTLHGEKGQBBCDZLTNDZBJDLACROBF --worker abah --url ws.qubicmine.pro
