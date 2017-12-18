#!/bin/sh
#cd /home/chen/Projects/caffe-ssd/SqueezeNet-SSD
if ! test -f example/squeezenet_ssd_voc_train.prototxt ;then
	echo "error: example/squeezenet_ssd_voc_train.prototxt does not exist."
	echo "please use the gen_model.sh to generate your own model."
        exit 1
fi
mkdir -p snapshot
/home/chen/caffe/build/tools/caffe train \
--solver="solver.prototxt" \
--weights="SqueezeNet/SqueezeNet_v1.1/squeezenet_v1.1.caffemodel" \
--gpu 3 2>&1 | tee snapshot/SqueezeNet_SSD_300x300.log
