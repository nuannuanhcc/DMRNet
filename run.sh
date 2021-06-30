#!/usr/bin/env bash
#./mmdetection/tools/dist_train.sh ./configs/reppoints_moment_r50_fpn_1x.py 8 --eval
# person search
python3 ./mmdetection/tools/train.py ./configs/reppoints_moment_r50_fpn_1x.py --eval --moco --work_dir './work_dirs/dmr_reppoints'
python3 ./mmdetection/tools/train.py ./mmdetection/configs/retinanet_r50_fpn_1x.py --eval --moco --work_dir './work_dirs/dmr_retina'
# detection only
python3 ./mmdetection/tools/train.py ./configs/reppoints_moment_r50_fpn_1x.py --eval --work_dir './work_dirs/det_reppoints'
python3 ./mmdetection/tools/train.py ./mmdetection/configs/retinanet_r50_fpn_1x.py --eval --work_dir './work_dirs/det_retina'

