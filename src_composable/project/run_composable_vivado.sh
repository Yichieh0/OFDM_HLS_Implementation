#!/usr/bin/bash
# bash run_composable.sh

if [ -d "./composable_communcation/" ]
then
 rm -r ./composable_communcation/
 echo "start vivado project"
fi

if [ -d "./commun.hwh" ]
then
 rm ./commun.hwh
fi

if [ -d "./commun.bit" ]
then
 rm ./commun.bit
fi

vivado -source composable_communcation.tcl

echo "======================================================================"
echo "                           vivado complete "
echo "======================================================================"

