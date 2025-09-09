FROM nvidia/cuda:12.5.1-devel-ubuntu22.04 AS base

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/NVIDIA/cuda-samples.git

RUN apt-get update && apt-get install -y cmake
