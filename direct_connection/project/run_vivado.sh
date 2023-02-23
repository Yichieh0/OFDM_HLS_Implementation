#!/usr/bin/bash
# bash run_composable.sh

if [ -d "./vivado_project/" ]
then
 rm -r ./vivado_project/
 echo "start vivado project"
fi

vivado -source vivado_project.tcl.tcl

echo "======================================================================"
echo "                           vivado complete "
echo "======================================================================"

