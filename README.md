module num : 
![image](https://user-images.githubusercontent.com/102524142/189187327-e17fa058-0e81-4b2c-9204-d0b3b748dec5.png)


**Export IP by vitis_hls :**

1. CSIM
- check software design result is correct
2. Synthesis
- set top module
- set corresponding directives for input and output ports
- set interface protocol as ap_ctrl_none
- set clock period to 20ns
- set the part to xck26-sfvc784-2LV-c
- vivado IP flow target
- check the design is synthesizable
- check the hardware utilization and timing information
3. COSIM
- check the hardware design result is correct
- check the II and latency
4. Export IP
- export IP for vivado composable connection
