#!/bin/bash

# -- 1. Move trained weight file to weights/yolo_trained.ckpt
mv checkpoints/yolov3_ckpt_100.pth weights/yolo_trained.pth 2>/dev/null || :

# -- 2. Set image filename
image_filename="data/custom1_eval/00011.png"

# -- 3. Detect
python src/detect_one_image.py \
    --weights_path "weights/yolo_trained.pth" \
    --conf_thres 0.9 \
    --nms_thres 0.3 \
    --batch_size 1 \
    --image_filename $image_filename