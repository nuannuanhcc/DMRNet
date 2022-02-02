#!/usr/bin/env bash
export DIR_NAME="reppoints"
python3 ./mmdetection/tools/test.py ./configs/reppoints_moment_r50_fpn_1x.py ./work_dirs/$DIR_NAME/latest.pth --work_dir './work_dirs/'$DIR_NAME''

./mmdetection/tools/dist_test.sh ./configs/reppoints_moment_r50_fpn_1x.py ./work_dirs/$DIR_NAME/latest.pth 4 --work_dir './work_dirs/'$DIR_NAME''