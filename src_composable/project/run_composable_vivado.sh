#!/usr/bin/bash
# bash run_composable.sh

if [ -d "./composable_communcation/" ]
then
 rm -r ./composable_communcation/
 echo "start vivado project"
fi

vivado -source composable_communcation.tcl

echo "======================================================================"
echo "                           vivado complete "
echo "======================================================================"

