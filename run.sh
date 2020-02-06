#!/bin/bash
# @Author        :   yuyong
# @Created Time  :   2019年10月30日 星期三 17时13分07秒
# @File Name     :   run.sh
python tools/train_net.py --config-file configs/COCO-Keypoints/keypoint_rcnn_R_101_FPN_3x.yaml --num-gpus 2 SOLVER.IMS_PER_BATCH 2 SOLVER.BASE_LR 0.005 SOLVER.CHECKPOINT_PERIOD 20000
#python tools/train_net.py --config-file configs/COCO-Keypoints/keypoint_rcnn_R_50_FPN_1x.yaml --num-gpus 2 --resume SOLVER.IMS_PER_BATCH 2 SOLVER.BASE_LR 0.005
python tools/train_net.py --config-file configs/TW-keypoints/keypoint_rcnn_X_101_32x8d_FPN_3x.yaml --num-gpus 2 --resume MODEL.WEIGHTS /mapbar1/yuyong/git/detectron2/models/model_0059999.pth SOLVER.IMS_PER_BATCH 2 SOLVER.BASE_LR 0.0001 SOLVER.CHECKPOINT_PERIOD 10000
python demo/demo.py --config-file configs/TW-keypoints/keypoint_rcnn_R_50_FPN_3x.yaml --dir_input /mapbar1/HAD_130w20191223/VideoGPS_2018_0729_1428 --output /mapbar1/HAD_130w20191223/keypoint_results/VideoGPS_2018_0729_1428 --opts MODEL.WEIGHTS /mapbar1/yuyong/git/detectron2/r50/model_final.pth
