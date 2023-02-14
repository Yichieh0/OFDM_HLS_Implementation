<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>decoder_bit</name>
      <module_structure>Dataflow</module_structure>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>y0300</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName>FIFO_SRL</coreName>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>30</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>y1301</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName>FIFO_SRL</coreName>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>30</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>output302</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName>FIFO_SRL</coreName>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>1451311360</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>78</id>
              <name>temp_trellis_survivor_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>temp_trellis_survivor_V_U</rtlName>
              <control>auto</control>
              <opType>ram_1p</opType>
              <implIndex>auto</implIndex>
              <coreName>RAM</coreName>
              <isStorage>1</isStorage>
              <storageDepth>64</storageDepth>
              <coreId>83</coreId>
              <rtlModuleName>decoder_decoder_bit_temp_trellis_survivor_V</rtlModuleName>
            </Obj>
            <bitwidth>33</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>85</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>79</id>
              <name>best_branch_loc_channel</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>best_branch_loc_channel_U</rtlName>
              <control>auto</control>
              <opType>fifo</opType>
              <implIndex>srl</implIndex>
              <coreName>FIFO_SRL</coreName>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>81</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <oprand_edges>
            <count>74</count>
            <item_version>0</item_version>
            <item>87</item>
            <item>88</item>
            <item>89</item>
            <item>90</item>
            <item>99</item>
            <item>100</item>
            <item>101</item>
            <item>102</item>
            <item>103</item>
            <item>104</item>
            <item>105</item>
            <item>106</item>
            <item>107</item>
            <item>108</item>
            <item>109</item>
            <item>110</item>
            <item>111</item>
            <item>112</item>
            <item>113</item>
            <item>114</item>
            <item>115</item>
            <item>116</item>
            <item>117</item>
            <item>118</item>
            <item>119</item>
            <item>120</item>
            <item>121</item>
            <item>122</item>
            <item>123</item>
            <item>124</item>
            <item>125</item>
            <item>126</item>
            <item>127</item>
            <item>128</item>
            <item>129</item>
            <item>130</item>
            <item>131</item>
            <item>132</item>
            <item>133</item>
            <item>134</item>
            <item>135</item>
            <item>136</item>
            <item>137</item>
            <item>138</item>
            <item>139</item>
            <item>140</item>
            <item>141</item>
            <item>142</item>
            <item>143</item>
            <item>144</item>
            <item>145</item>
            <item>146</item>
            <item>147</item>
            <item>148</item>
            <item>149</item>
            <item>150</item>
            <item>151</item>
            <item>152</item>
            <item>153</item>
            <item>154</item>
            <item>155</item>
            <item>156</item>
            <item>157</item>
            <item>158</item>
            <item>159</item>
            <item>160</item>
            <item>161</item>
            <item>162</item>
            <item>163</item>
            <item>164</item>
            <item>165</item>
            <item>166</item>
            <item>167</item>
            <item>168</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>80</id>
              <name>best_branch_3_cast_loc_channel</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>best_branch_3_cast_loc_channel_U</rtlName>
              <control>auto</control>
              <opType>fifo</opType>
              <implIndex>srl</implIndex>
              <coreName>FIFO_SRL</coreName>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>81</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <oprand_edges>
            <count>5</count>
            <item_version>0</item_version>
            <item>92</item>
            <item>93</item>
            <item>94</item>
            <item>230</item>
            <item>231</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>1.66</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>81</id>
              <name>_ln0</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>decoder_bit_Block_split223_proc_U0</rtlName>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>1451375712</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>3</count>
            <item_version>0</item_version>
            <item>96</item>
            <item>97</item>
            <item>98</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>1.83</m_delay>
          <m_topoIndex>4</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>82</id>
              <name>_ln248</name>
              <fileName>ecc_decoder_src/src/decoder.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>248</lineNumber>
              <contextFuncName>decoder_bit</contextFuncName>
              <contextNormFuncName>decoder_bit</contextNormFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="11" tracking_level="0" version="0">
                  <first>/mnt/HLSNAS/g110064539/composable_IP_file</first>
                  <second class_id="12" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="13" tracking_level="0" version="0">
                      <first class_id="14" tracking_level="0" version="0">
                        <first>ecc_decoder_src/src/decoder.cpp</first>
                        <second>decoder_bit</second>
                      </first>
                      <second>248</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>1450749376</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>5</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_9">
          <Value>
            <Obj>
              <type>2</type>
              <id>84</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>1450602576</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_10">
          <Value>
            <Obj>
              <type>2</type>
              <id>86</id>
              <name>decoder_bit_Block_split148_proc3</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>1454093088</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:decoder_bit_Block_.split148_proc3&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_11">
          <Value>
            <Obj>
              <type>2</type>
              <id>91</id>
              <name>decoder_bit_Loop_VITIS_LOOP_227_6_proc</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>1397508187</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:decoder_bit_Loop_VITIS_LOOP_227_6_proc&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_12">
          <Value>
            <Obj>
              <type>2</type>
              <id>95</id>
              <name>decoder_bit_Block_split223_proc</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>1452412416</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:decoder_bit_Block_.split223_proc&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_13">
          <Obj>
            <type>3</type>
            <id>83</id>
            <name>decoder_bit</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <contextNormFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <control/>
            <opType/>
            <implIndex/>
            <coreName/>
            <isStorage>0</isStorage>
            <storageDepth>0</storageDepth>
            <coreId>1452623968</coreId>
            <rtlModuleName/>
          </Obj>
          <node_objs>
            <count>5</count>
            <item_version>0</item_version>
            <item>78</item>
            <item>79</item>
            <item>80</item>
            <item>81</item>
            <item>82</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>83</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_14">
          <id>85</id>
          <edge_type>1</edge_type>
          <source_obj>84</source_obj>
          <sink_obj>78</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_15">
          <id>87</id>
          <edge_type>1</edge_type>
          <source_obj>86</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_16">
          <id>88</id>
          <edge_type>1</edge_type>
          <source_obj>78</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>89</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>90</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>92</id>
          <edge_type>1</edge_type>
          <source_obj>91</source_obj>
          <sink_obj>80</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>93</id>
          <edge_type>1</edge_type>
          <source_obj>79</source_obj>
          <sink_obj>80</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>94</id>
          <edge_type>1</edge_type>
          <source_obj>78</source_obj>
          <sink_obj>80</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>96</id>
          <edge_type>1</edge_type>
          <source_obj>95</source_obj>
          <sink_obj>81</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>97</id>
          <edge_type>1</edge_type>
          <source_obj>80</source_obj>
          <sink_obj>81</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>98</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>81</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>99</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>100</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>101</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>102</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>103</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>104</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>105</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>106</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_33">
          <id>107</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_34">
          <id>108</id>
          <edge_type>1</edge_type>
          <source_obj>13</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_35">
          <id>109</id>
          <edge_type>1</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_36">
          <id>110</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_37">
          <id>111</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_38">
          <id>112</id>
          <edge_type>1</edge_type>
          <source_obj>17</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_39">
          <id>113</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_40">
          <id>114</id>
          <edge_type>1</edge_type>
          <source_obj>19</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_41">
          <id>115</id>
          <edge_type>1</edge_type>
          <source_obj>20</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_42">
          <id>116</id>
          <edge_type>1</edge_type>
          <source_obj>21</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_43">
          <id>117</id>
          <edge_type>1</edge_type>
          <source_obj>22</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_44">
          <id>118</id>
          <edge_type>1</edge_type>
          <source_obj>23</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_45">
          <id>119</id>
          <edge_type>1</edge_type>
          <source_obj>24</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_46">
          <id>120</id>
          <edge_type>1</edge_type>
          <source_obj>25</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_47">
          <id>121</id>
          <edge_type>1</edge_type>
          <source_obj>26</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_48">
          <id>122</id>
          <edge_type>1</edge_type>
          <source_obj>27</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_49">
          <id>123</id>
          <edge_type>1</edge_type>
          <source_obj>28</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_50">
          <id>124</id>
          <edge_type>1</edge_type>
          <source_obj>29</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_51">
          <id>125</id>
          <edge_type>1</edge_type>
          <source_obj>30</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_52">
          <id>126</id>
          <edge_type>1</edge_type>
          <source_obj>31</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_53">
          <id>127</id>
          <edge_type>1</edge_type>
          <source_obj>32</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_54">
          <id>128</id>
          <edge_type>1</edge_type>
          <source_obj>33</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_55">
          <id>129</id>
          <edge_type>1</edge_type>
          <source_obj>34</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_56">
          <id>130</id>
          <edge_type>1</edge_type>
          <source_obj>35</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_57">
          <id>131</id>
          <edge_type>1</edge_type>
          <source_obj>36</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_58">
          <id>132</id>
          <edge_type>1</edge_type>
          <source_obj>37</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_59">
          <id>133</id>
          <edge_type>1</edge_type>
          <source_obj>38</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_60">
          <id>134</id>
          <edge_type>1</edge_type>
          <source_obj>39</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_61">
          <id>135</id>
          <edge_type>1</edge_type>
          <source_obj>40</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_62">
          <id>136</id>
          <edge_type>1</edge_type>
          <source_obj>41</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_63">
          <id>137</id>
          <edge_type>1</edge_type>
          <source_obj>42</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_64">
          <id>138</id>
          <edge_type>1</edge_type>
          <source_obj>43</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_65">
          <id>139</id>
          <edge_type>1</edge_type>
          <source_obj>44</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_66">
          <id>140</id>
          <edge_type>1</edge_type>
          <source_obj>45</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_67">
          <id>141</id>
          <edge_type>1</edge_type>
          <source_obj>46</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_68">
          <id>142</id>
          <edge_type>1</edge_type>
          <source_obj>47</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_69">
          <id>143</id>
          <edge_type>1</edge_type>
          <source_obj>48</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_70">
          <id>144</id>
          <edge_type>1</edge_type>
          <source_obj>49</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_71">
          <id>145</id>
          <edge_type>1</edge_type>
          <source_obj>50</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_72">
          <id>146</id>
          <edge_type>1</edge_type>
          <source_obj>51</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_73">
          <id>147</id>
          <edge_type>1</edge_type>
          <source_obj>52</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_74">
          <id>148</id>
          <edge_type>1</edge_type>
          <source_obj>53</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_75">
          <id>149</id>
          <edge_type>1</edge_type>
          <source_obj>54</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_76">
          <id>150</id>
          <edge_type>1</edge_type>
          <source_obj>55</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_77">
          <id>151</id>
          <edge_type>1</edge_type>
          <source_obj>56</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_78">
          <id>152</id>
          <edge_type>1</edge_type>
          <source_obj>57</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_79">
          <id>153</id>
          <edge_type>1</edge_type>
          <source_obj>58</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_80">
          <id>154</id>
          <edge_type>1</edge_type>
          <source_obj>59</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_81">
          <id>155</id>
          <edge_type>1</edge_type>
          <source_obj>60</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_82">
          <id>156</id>
          <edge_type>1</edge_type>
          <source_obj>61</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_83">
          <id>157</id>
          <edge_type>1</edge_type>
          <source_obj>62</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_84">
          <id>158</id>
          <edge_type>1</edge_type>
          <source_obj>63</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_85">
          <id>159</id>
          <edge_type>1</edge_type>
          <source_obj>64</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_86">
          <id>160</id>
          <edge_type>1</edge_type>
          <source_obj>65</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_87">
          <id>161</id>
          <edge_type>1</edge_type>
          <source_obj>66</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_88">
          <id>162</id>
          <edge_type>1</edge_type>
          <source_obj>67</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_89">
          <id>163</id>
          <edge_type>1</edge_type>
          <source_obj>68</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_90">
          <id>164</id>
          <edge_type>1</edge_type>
          <source_obj>69</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_91">
          <id>165</id>
          <edge_type>1</edge_type>
          <source_obj>70</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_92">
          <id>166</id>
          <edge_type>1</edge_type>
          <source_obj>71</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_93">
          <id>167</id>
          <edge_type>1</edge_type>
          <source_obj>72</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_94">
          <id>168</id>
          <edge_type>1</edge_type>
          <source_obj>73</source_obj>
          <sink_obj>79</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_95">
          <id>230</id>
          <edge_type>4</edge_type>
          <source_obj>79</source_obj>
          <sink_obj>80</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_96">
          <id>231</id>
          <edge_type>4</edge_type>
          <source_obj>79</source_obj>
          <sink_obj>80</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_97">
        <mId>1</mId>
        <mTag>decoder_bit</mTag>
        <mNormTag>decoder_bit</mNormTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>83</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>556</mMinLatency>
        <mMaxLatency>620</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_98">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="25" tracking_level="1" version="0" object_id="_99">
              <name>y0300</name>
              <dir>0</dir>
              <type>0</type>
              <need_hs>0</need_hs>
              <top_port class_id="-1"/>
              <chan class_id="-1"/>
            </item>
            <item class_id_reference="25" object_id="_100">
              <name>y1301</name>
              <dir>0</dir>
              <type>0</type>
              <need_hs>0</need_hs>
              <top_port class_id="-1"/>
              <chan class_id="-1"/>
            </item>
            <item class_id_reference="25" object_id="_101">
              <name>output302</name>
              <dir>1</dir>
              <type>0</type>
              <need_hs>0</need_hs>
              <top_port class_id="-1"/>
              <chan class_id="-1"/>
            </item>
          </port_list>
          <process_list class_id="27" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="28" tracking_level="1" version="0" object_id="_102">
              <type>0</type>
              <name>decoder_bit_Block_split148_proc3_U0</name>
              <ssdmobj_id>79</ssdmobj_id>
              <pins class_id="29" tracking_level="0" version="0">
                <count>2</count>
                <item_version>0</item_version>
                <item class_id="30" tracking_level="1" version="0" object_id="_103">
                  <port class_id_reference="25" object_id="_104">
                    <name>y0300</name>
                    <dir>0</dir>
                    <type>0</type>
                    <need_hs>0</need_hs>
                    <top_port class_id_reference="25" object_id_reference="_99"/>
                    <chan class_id="-1"/>
                  </port>
                  <inst class_id="31" tracking_level="1" version="0" object_id="_105">
                    <type>0</type>
                    <name>decoder_bit_Block_split148_proc3_U0</name>
                    <ssdmobj_id>79</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="30" object_id="_106">
                  <port class_id_reference="25" object_id="_107">
                    <name>y1301</name>
                    <dir>0</dir>
                    <type>0</type>
                    <need_hs>0</need_hs>
                    <top_port class_id_reference="25" object_id_reference="_100"/>
                    <chan class_id="-1"/>
                  </port>
                  <inst class_id_reference="31" object_id_reference="_105"/>
                </item>
              </pins>
              <in_source_fork>1</in_source_fork>
              <in_sink_join>0</in_sink_join>
              <flag_in_gui>0</flag_in_gui>
            </item>
            <item class_id_reference="28" object_id="_108">
              <type>0</type>
              <name>decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0</name>
              <ssdmobj_id>80</ssdmobj_id>
              <pins>
                <count>0</count>
                <item_version>0</item_version>
              </pins>
              <in_source_fork>0</in_source_fork>
              <in_sink_join>0</in_sink_join>
              <flag_in_gui>0</flag_in_gui>
            </item>
            <item class_id_reference="28" object_id="_109">
              <type>0</type>
              <name>decoder_bit_Block_split223_proc_U0</name>
              <ssdmobj_id>81</ssdmobj_id>
              <pins>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id_reference="30" object_id="_110">
                  <port class_id_reference="25" object_id="_111">
                    <name>output302</name>
                    <dir>1</dir>
                    <type>0</type>
                    <need_hs>0</need_hs>
                    <top_port class_id_reference="25" object_id_reference="_101"/>
                    <chan class_id="-1"/>
                  </port>
                  <inst class_id_reference="31" object_id="_112">
                    <type>0</type>
                    <name>decoder_bit_Block_split223_proc_U0</name>
                    <ssdmobj_id>81</ssdmobj_id>
                  </inst>
                </item>
              </pins>
              <in_source_fork>0</in_source_fork>
              <in_sink_join>1</in_sink_join>
              <flag_in_gui>0</flag_in_gui>
            </item>
          </process_list>
          <channel_list class_id="32" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_113">
              <type>1</type>
              <name>temp_trellis_survivor_V</name>
              <ssdmobj_id>78</ssdmobj_id>
              <ctype>1</ctype>
              <depth>0</depth>
              <bitwidth>0</bitwidth>
              <suggested_type>0</suggested_type>
              <suggested_depth>2</suggested_depth>
              <source class_id_reference="30" object_id="_114">
                <port class_id_reference="25" object_id="_115">
                  <name>in</name>
                  <dir>0</dir>
                  <type>3</type>
                  <need_hs>0</need_hs>
                  <top_port class_id="-1"/>
                  <chan class_id="-1"/>
                </port>
                <inst class_id_reference="31" object_id_reference="_105"/>
              </source>
              <sink class_id_reference="30" object_id="_116">
                <port class_id_reference="25" object_id="_117">
                  <name>out</name>
                  <dir>1</dir>
                  <type>3</type>
                  <need_hs>0</need_hs>
                  <top_port class_id="-1"/>
                  <chan class_id="-1"/>
                </port>
                <inst class_id_reference="31" object_id="_118">
                  <type>0</type>
                  <name>decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0</name>
                  <ssdmobj_id>80</ssdmobj_id>
                </inst>
              </sink>
            </item>
            <item class_id_reference="26" object_id="_119">
              <type>1</type>
              <name>best_branch_loc_channel</name>
              <ssdmobj_id>79</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <suggested_type>1</suggested_type>
              <suggested_depth>2</suggested_depth>
              <source class_id_reference="30" object_id="_120">
                <port class_id_reference="25" object_id="_121">
                  <name>in</name>
                  <dir>0</dir>
                  <type>3</type>
                  <need_hs>0</need_hs>
                  <top_port class_id="-1"/>
                  <chan class_id="-1"/>
                </port>
                <inst class_id_reference="31" object_id_reference="_105"/>
              </source>
              <sink class_id_reference="30" object_id="_122">
                <port class_id_reference="25" object_id="_123">
                  <name>out</name>
                  <dir>1</dir>
                  <type>3</type>
                  <need_hs>0</need_hs>
                  <top_port class_id="-1"/>
                  <chan class_id="-1"/>
                </port>
                <inst class_id_reference="31" object_id_reference="_118"/>
              </sink>
            </item>
            <item class_id_reference="26" object_id="_124">
              <type>1</type>
              <name>best_branch_3_cast_loc_channel</name>
              <ssdmobj_id>80</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>1</bitwidth>
              <suggested_type>1</suggested_type>
              <suggested_depth>2</suggested_depth>
              <source class_id_reference="30" object_id="_125">
                <port class_id_reference="25" object_id="_126">
                  <name>in</name>
                  <dir>0</dir>
                  <type>3</type>
                  <need_hs>0</need_hs>
                  <top_port class_id="-1"/>
                  <chan class_id="-1"/>
                </port>
                <inst class_id_reference="31" object_id_reference="_118"/>
              </source>
              <sink class_id_reference="30" object_id="_127">
                <port class_id_reference="25" object_id="_128">
                  <name>out</name>
                  <dir>1</dir>
                  <type>3</type>
                  <need_hs>0</need_hs>
                  <top_port class_id="-1"/>
                  <chan class_id="-1"/>
                </port>
                <inst class_id_reference="31" object_id_reference="_112"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_129">
      <states class_id="35" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_130">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_131">
              <id>78</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_132">
              <id>79</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_133">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_134">
              <id>79</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_135">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_136">
              <id>80</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_137">
          <id>4</id>
          <operations>
            <count>7</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_138">
              <id>74</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_139">
              <id>75</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_140">
              <id>76</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_141">
              <id>77</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_142">
              <id>80</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_143">
              <id>81</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_144">
              <id>82</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_145">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_146">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_147">
          <inState>3</inState>
          <outState>4</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_148">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>decoder_bit_Block_split148_proc3_U0 (decoder_bit_Block_split148_proc3)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>3</second>
            </item>
            <item>
              <first>FF</first>
              <second>2518</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1516</second>
            </item>
            <item>
              <first>URAM</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>decoder_bit_Block_split223_proc_U0 (decoder_bit_Block_split223_proc)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>20</second>
            </item>
          </second>
        </item>
        <item>
          <first>decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0 (decoder_bit_Loop_VITIS_LOOP_227_6_proc)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>81</second>
            </item>
            <item>
              <first>LUT</first>
              <second>530</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>7</count>
        <item_version>0</item_version>
        <item>
          <first>ap_channel_done_best_branch_loc_channel ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_channel_done_temp_trellis_survivor_V ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_idle ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_sync_channel_write_best_branch_loc_channel ( or ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_sync_channel_write_temp_trellis_survivor_V ( or ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>decoder_bit_Block_split148_proc3_U0_ap_continue ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0_ap_start ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>best_branch_3_cast_loc_channel_U</first>
          <second>
            <count>5</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>2</second>
            </item>
            <item>
              <first>FF</first>
              <second>99</second>
            </item>
            <item>
              <first>LUT</first>
              <second>67</second>
            </item>
          </second>
        </item>
        <item>
          <first>best_branch_loc_channel_U</first>
          <second>
            <count>5</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>FF</first>
              <second>99</second>
            </item>
            <item>
              <first>LUT</first>
              <second>67</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>temp_trellis_survivor_V_U</first>
          <second>
            <count>8</count>
            <item_version>0</item_version>
            <item>
              <first>(0Words)</first>
              <second>64</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>33</second>
            </item>
            <item>
              <first>(2Banks)</first>
              <second>1</second>
            </item>
            <item>
              <first>(3W*Bits*Banks)</first>
              <second>2112</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>0</second>
            </item>
            <item>
              <first>URAM</first>
              <second>0</second>
            </item>
          </second>
        </item>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>ap_sync_reg_channel_write_best_branch_loc_channel</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>9</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_sync_reg_channel_write_temp_trellis_survivor_V</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>9</second>
            </item>
          </second>
        </item>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>ap_sync_reg_channel_write_best_branch_loc_channel</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_sync_reg_channel_write_temp_trellis_survivor_V</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>decoder_bit_Block_split148_proc3_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>decoder_bit_Block_split223_proc_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>decoder_bit_Block_split148_proc3_U0 (decoder_bit_Block_split148_proc3)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>79</item>
          </second>
        </item>
        <item>
          <first>decoder_bit_Block_split223_proc_U0 (decoder_bit_Block_split223_proc)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>81</item>
          </second>
        </item>
        <item>
          <first>decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0 (decoder_bit_Loop_VITIS_LOOP_227_6_proc)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>80</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>best_branch_3_cast_loc_channel_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>117</item>
          </second>
        </item>
        <item>
          <first>best_branch_loc_channel_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>106</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>temp_trellis_survivor_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>1</item>
          </second>
        </item>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>78</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>79</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>80</first>
        <second>
          <first>2</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>81</first>
        <second>
          <first>3</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>82</first>
        <second>
          <first>3</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>83</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>3</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_149">
        <region_name>decoder_bit</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>83</item>
        </basic_blocks>
        <nodes>
          <count>9</count>
          <item_version>0</item_version>
          <item>74</item>
          <item>75</item>
          <item>76</item>
          <item>77</item>
          <item>78</item>
          <item>79</item>
          <item>80</item>
          <item>81</item>
          <item>82</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
        <mDBIIViolationVec class_id="59" tracking_level="0" version="0">
          <count>0</count>
          <item_version>0</item_version>
        </mDBIIViolationVec>
      </item>
    </regions>
    <dp_fu_nodes class_id="60" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="61" tracking_level="0" version="0">
        <first>166</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>78</item>
        </second>
      </item>
      <item>
        <first>170</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>79</item>
          <item>79</item>
        </second>
      </item>
      <item>
        <first>320</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>80</item>
          <item>80</item>
        </second>
      </item>
      <item>
        <first>326</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>81</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="63" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="64" tracking_level="0" version="0">
        <first>temp_trellis_survivor_V_alloca_fu_166</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>78</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>3</count>
      <item_version>0</item_version>
      <item>
        <first>call_ln0_decoder_bit_Block_split223_proc_fu_326</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>81</item>
        </second>
      </item>
      <item>
        <first>grp_decoder_bit_Block_split148_proc3_fu_170</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>79</item>
          <item>79</item>
        </second>
      </item>
      <item>
        <first>grp_decoder_bit_Loop_VITIS_LOOP_227_6_proc_fu_320</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>80</item>
          <item>80</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="65" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="66" tracking_level="0" version="0">
        <first class_id="67" tracking_level="0" version="0">
          <first>trellis_metric</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>79</item>
        </second>
      </item>
      <item>
        <first>
          <first>trellis_table_0_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>79</item>
        </second>
      </item>
      <item>
        <first>
          <first>trellis_table_0_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>79</item>
        </second>
      </item>
      <item>
        <first>
          <first>trellis_table_1_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>79</item>
        </second>
      </item>
      <item>
        <first>
          <first>trellis_table_1_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>79</item>
        </second>
      </item>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>334</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>79</item>
        </second>
      </item>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>best_branch_loc_channel_reg_334</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>79</item>
        </second>
      </item>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="68" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="69" tracking_level="0" version="0">
        <first>output302</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>81</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>y0300</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>79</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>y1301</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>79</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core>
      <count>3</count>
      <item_version>0</item_version>
      <item>
        <first>1</first>
        <second>
          <first>1150</first>
          <second>10</second>
        </second>
      </item>
      <item>
        <first>2</first>
        <second>
          <first>1150</first>
          <second>10</second>
        </second>
      </item>
      <item>
        <first>3</first>
        <second>
          <first>1151</first>
          <second>10</second>
        </second>
      </item>
    </port2core>
    <node2core>
      <count>4</count>
      <item_version>0</item_version>
      <item>
        <first>78</first>
        <second>
          <first>27</first>
          <second>136</second>
        </second>
      </item>
      <item>
        <first>79</first>
        <second>
          <first>666</first>
          <second>10</second>
        </second>
      </item>
      <item>
        <first>80</first>
        <second>
          <first>666</first>
          <second>10</second>
        </second>
      </item>
      <item>
        <first>81</first>
        <second>
          <first>-1</first>
          <second>-1</second>
        </second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
