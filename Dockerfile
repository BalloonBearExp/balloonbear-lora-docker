FROM runpod/pytorch:2.1.0-py3.10-cuda12.1.0-devel

# Set the working directory
WORKDIR /workspace

# Install core dependencies
RUN apt-get update && apt-get install -y \
    git wget unzip && \
    pip install --upgrade pip

# Copy local files into the container
COPY . /workspace

# Install Python dependencies
RUN pip install -r requirements.txt

# Default command to start training
CMD ["python", "train_lora.py"]

