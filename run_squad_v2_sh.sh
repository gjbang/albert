#!/bin/bash

set -e
set -x

INPUT_DIR="./albert_large"
OUTPUT_DIR="./albert_large_out"
SQUAD_DIR="./squad2"

python -m run_squad_v2\
  --spm_model_file="${INPUT_DIR}/30k-clean.model"\
  --vocab_file="${INPUT_DIR}/30k-clean.vocabl"\
  --albert_config_file="${INPUT_DIR}/albert_config.json"\
  --output_dir="${OUTPUT_DIR}"\
  --do_train\
  --do_eval\
  --train_file="${SQUAD_DIR}/train-v2.0.json"\
  --predict_file="${SQUAD_DIR}/dev-v2.0.json"\
  --train_feature_file="${OUTPUT_DIR}/squad_train_feature_file.tf_record"
