#!/usr/bin/bash
# bash run_composable.sh

if [ -d "./vivado_project/" ]
then
 rm -r ./vivado_project/
 echo "start vivado project"
fi

if [ -d "./design_1.hwh" ]
then
 rm ./design_1.hwh
fi

if [ -d "./design_1.bit" ]
then
 rm ./design_1.bit
fi

vivado -source vivado_project.tcl

echo "======================================================================"
echo "                           vivado complete "
echo "======================================================================"

