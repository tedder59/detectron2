#!/bin/bash
# @Author        :   yuyong
# @Created Time  :   2019年10月31日 星期四 08时56分12秒
# @File Name     :   test.sh
#python demo/demo.py --config-file configs/COCO-Keypoints/keypoint_rcnn_R_50_FPN_1x.yaml --input /mapbar1/yuyong/data/cocodata/val2017/000000025386.jpg --opts MODEL.WEIGHTS output/model_final.pth
python demo/demo.py --config-file configs/TW-keypoints/keypoint_rcnn_X_101_32x8d_FPN_3x.yaml --input images/shangdi_b_0.jpg images/2012-3-23_20-23-25_3300.jpg --output ./ --opts MODEL.WEIGHTS /mapbar1/yuyong/git/detectron2/2/model_0069999.pth
python demo/demo.py --config-file configs/TW-keypoints/keypoint_rcnn_X_101_32x8d_FPN_3x.yaml --input images/shangdi_b_0.jpg images/2012-3-23_20-23-25_4780.jpg images/1381669296918883_hd_6596.jpg images/2012-3-23_20-23-25_3300.jpg images/2012-3-23_20-23-25_5000.jpg images/2012-3-23_20-23-25_5760.jpg --output ./ --opts MODEL.WEIGHTS /mapbar1/yuyong/git/detectron2/models/model_0049999.pth
python tools/train_net.py --config-file configs/TW-keypoints/keypoint_rcnn_X_101_32x8d_FPN_3x.yaml --eval-only MODEL.WEIGHTS /mapbar1/yuyong/git/detectron2/models/model_0079999.pth
