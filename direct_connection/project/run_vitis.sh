#!/usr/bin/bash
# bash run_composable.sh

echo "start vitis_hls project"
cd ./vitis_hls_project
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1

echo "======================================================================"
echo "                           vitis_hls complete "
echo "======================================================================"

