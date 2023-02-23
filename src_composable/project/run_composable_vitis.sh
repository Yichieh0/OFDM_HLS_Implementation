#!/usr/bin/bash
# bash run_composable.sh

echo "start vitis_hls project"
cd ./vitis_hls_composable_project/channel
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../CP/CP_insertion
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../CP_removal
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../../ECC/decoder
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../encoder
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../../FFT/FFT
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../IFFT
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../../pilot/pilot_insertion
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../pilot_removal
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../../QAM/QAM
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../deQAM
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../../sym_pixl/pixl2sym
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1
cd ../sym2pixl
make clean
make run CSIM=1 CSYNTH=1 COSIM=1 EXPORT_IP=1

echo "======================================================================"
echo "                           vitis_hls complete "
echo "======================================================================"

