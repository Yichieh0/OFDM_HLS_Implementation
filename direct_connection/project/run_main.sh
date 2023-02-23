#!/usr/bin/bash

bash run_vitis.sh
bash run_vivado.sh

cp ./vivado_project/vivado_project.gen/sources_1/bd/design_1/hw_handoff/design_1.hwh ./design_1.hwh
cp ./vivado_project_save/vivado_project.runs/impl_1/design_1_wrapper.bit ./design_1.bit
