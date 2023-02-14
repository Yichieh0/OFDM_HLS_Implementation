## 。Introduction
This folder contains the example bitstream files and the host code which can connected with the device.  
There are two different modes in the host code, one with ECC and the other without.  
The parameters below could be modified for the simulation of differnet situations.  
1. qam_num = 16 : The modulation type. (The system only supports 16QAM.)  
2. sym_num = 2 : Since the length of a single pixel is 8, a single data can be turned into 8/(the length of a data be modulated) symbols.  
3. pilot_width = 4 : The interval of two pilots. The smaller the value is, the result of the channel equalization would be more accurate.  
(The system now supports the pilot length not bigger than 16)  
4. CP_length = 16 : The length of the CP. 
5. TAPS_NUM = 1 : (The system now can support the multipath channel with 1, 2, 3, 6 and 9 taps.)  
6. SNR = [20] : The dB value of signal to noise ratio.  
7. FFT_len = 64 : The size of the FFT should be modified directly in the data_path.hpp in the vitis_hls_project.  
(The IP should be exported once again after modified the FFT_len)  


