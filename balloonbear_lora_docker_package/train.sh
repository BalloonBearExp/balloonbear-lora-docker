#!/bin/bash
echo "🚀 Starting Balloon Bear LoRA training..."

cd /workspace/train
accelerate launch train_network.py \
  --pretrained_model_name_or_path="sdxl_base_1.0" \
  --train_data_dir="./images" \
  --output_dir="./output" \
  --logging_dir="./logs" \
  --resolution=1200,800 \
  --network_module=networks.lora \
  --network_train_unet_only \
  --output_name="balloon_bear_final" \
  --mixed_precision="fp16" \
  --save_model_as=safetensors \
  --train_batch_size=1 \
  --learning_rate=1e-4 \
  --max_train_steps=2000
