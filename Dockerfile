FROM nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04

# Set the working directory
WORKDIR /workspace

# Install required dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3.10-venv \
    python3.10-dev \
    curl \
    git \
    wget \
    zip \
    unzip \
    build-essential \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && apt-get clean

# Set python3.10 as default
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1

# Install pip and venv
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python && \
    python -m pip install --upgrade pip

# Optional: Clone or copy your LoRA training script and install dependencies here
# COPY . /workspace
# RUN pip install -r requirements.txt
