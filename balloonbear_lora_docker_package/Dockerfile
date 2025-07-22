FROM nvidia/cuda:12.1.1-cudnn8-runtime-ubuntu22.04

# System dependencies
RUN apt-get update && apt-get install -y \
    git wget unzip curl python3 python3-pip && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    pip install --upgrade pip

# Install Python dependencies
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

# Copy training script
COPY train.sh /workspace/train.sh
RUN chmod +x /workspace/train.sh

WORKDIR /workspace
CMD ["bash", "train.sh"]
