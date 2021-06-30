#!/usr/bin/env bash
# python ./mmdetection/tools/test.py ./configs/reppoints_moment_r50_fpn_1x.py work_dirs/dmrnet/latest.pth
./mmdetection/tools/dist_test.sh ./configs/reppoints_moment_r50_fpn_1x.py \
                work_dirs/dmrnet/latest.pth 8