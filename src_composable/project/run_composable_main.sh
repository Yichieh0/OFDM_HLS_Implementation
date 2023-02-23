#!/usr/bin/bash

bash run_composable_vitis.sh
bash run_composable_vivado.sh

cp ./composable_communcation/composable_communcation.gen/sources_1/bd/commun/hw_handoff/commun.hwh commun.hwh
cp ./composable_communcation/composable_communcation.runs/impl_1/commun_wrapper.bit commun.bit
