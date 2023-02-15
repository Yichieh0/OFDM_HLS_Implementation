// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      encoder
`define AUTOTB_DUT_INST AESL_inst_encoder
`define AUTOTB_TOP      apatb_encoder_top
`define AUTOTB_LAT_RESULT_FILE "encoder.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "encoder.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_encoder_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 10.00
`define AUTOTB_II 0
`define AUTOTB_LATENCY -1

`define AESL_DEPTH_data_in_V_data_V 1
`define AESL_DEPTH_data_in_V_keep_V 1
`define AESL_DEPTH_data_in_V_strb_V 1
`define AESL_DEPTH_data_in_V_last_V 1
`define AESL_DEPTH_data_out_V_data_V 1
`define AESL_DEPTH_data_out_V_keep_V 1
`define AESL_DEPTH_data_out_V_strb_V 1
`define AESL_DEPTH_data_out_V_last_V 1
`define AUTOTB_TVIN_data_in_V_data_V  "../tv/cdatafile/c.encoder.autotvin_data_in_V_data_V.dat"
`define AUTOTB_TVIN_data_in_V_keep_V  "../tv/cdatafile/c.encoder.autotvin_data_in_V_keep_V.dat"
`define AUTOTB_TVIN_data_in_V_strb_V  "../tv/cdatafile/c.encoder.autotvin_data_in_V_strb_V.dat"
`define AUTOTB_TVIN_data_in_V_last_V  "../tv/cdatafile/c.encoder.autotvin_data_in_V_last_V.dat"
`define AUTOTB_TVIN_data_out_V_data_V  "../tv/cdatafile/c.encoder.autotvin_data_out_V_data_V.dat"
`define AUTOTB_TVIN_data_out_V_keep_V  "../tv/cdatafile/c.encoder.autotvin_data_out_V_keep_V.dat"
`define AUTOTB_TVIN_data_out_V_strb_V  "../tv/cdatafile/c.encoder.autotvin_data_out_V_strb_V.dat"
`define AUTOTB_TVIN_data_out_V_last_V  "../tv/cdatafile/c.encoder.autotvin_data_out_V_last_V.dat"
`define AUTOTB_TVIN_data_in_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvin_data_in_V_data_V.dat"
`define AUTOTB_TVIN_data_in_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvin_data_in_V_keep_V.dat"
`define AUTOTB_TVIN_data_in_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvin_data_in_V_strb_V.dat"
`define AUTOTB_TVIN_data_in_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvin_data_in_V_last_V.dat"
`define AUTOTB_TVIN_data_out_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvin_data_out_V_data_V.dat"
`define AUTOTB_TVIN_data_out_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvin_data_out_V_keep_V.dat"
`define AUTOTB_TVIN_data_out_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvin_data_out_V_strb_V.dat"
`define AUTOTB_TVIN_data_out_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvin_data_out_V_last_V.dat"
`define AUTOTB_TVOUT_data_out_V_data_V  "../tv/cdatafile/c.encoder.autotvout_data_out_V_data_V.dat"
`define AUTOTB_TVOUT_data_out_V_keep_V  "../tv/cdatafile/c.encoder.autotvout_data_out_V_keep_V.dat"
`define AUTOTB_TVOUT_data_out_V_strb_V  "../tv/cdatafile/c.encoder.autotvout_data_out_V_strb_V.dat"
`define AUTOTB_TVOUT_data_out_V_last_V  "../tv/cdatafile/c.encoder.autotvout_data_out_V_last_V.dat"
`define AUTOTB_TVOUT_data_out_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvout_data_out_V_data_V.dat"
`define AUTOTB_TVOUT_data_out_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvout_data_out_V_keep_V.dat"
`define AUTOTB_TVOUT_data_out_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvout_data_out_V_strb_V.dat"
`define AUTOTB_TVOUT_data_out_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.encoder.autotvout_data_out_V_last_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_data_in_V_data_V = 969;
parameter LENGTH_data_in_V_keep_V = 969;
parameter LENGTH_data_in_V_strb_V = 969;
parameter LENGTH_data_in_V_last_V = 969;
parameter LENGTH_data_out_V_data_V = 1925;
parameter LENGTH_data_out_V_keep_V = 1925;
parameter LENGTH_data_out_V_strb_V = 1925;
parameter LENGTH_data_out_V_last_V = 1925;

task read_token;
    input integer fp;
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
reg AESL_done = 0;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [63 : 0] data_in_TDATA;
wire  data_in_TVALID;
wire  data_in_TREADY;
wire [7 : 0] data_in_TKEEP;
wire [7 : 0] data_in_TSTRB;
wire [0 : 0] data_in_TLAST;
wire [63 : 0] data_out_TDATA;
wire  data_out_TVALID;
wire  data_out_TREADY;
wire [7 : 0] data_out_TKEEP;
wire [7 : 0] data_out_TSTRB;
wire [0 : 0] data_out_TLAST;
reg [31:0] ap_c_n_tvin_trans_num_data_in_V_data_V;
reg [31:0] ap_c_n_tvin_trans_num_data_in_V_keep_V;
reg [31:0] ap_c_n_tvin_trans_num_data_in_V_strb_V;
reg [31:0] ap_c_n_tvin_trans_num_data_in_V_last_V;
reg [31:0] ap_c_n_tvin_trans_num_data_out_V_data_V;
reg [31:0] ap_c_n_tvin_trans_num_data_out_V_keep_V;
reg [31:0] ap_c_n_tvin_trans_num_data_out_V_strb_V;
reg [31:0] ap_c_n_tvin_trans_num_data_out_V_last_V;
reg [31:0] ap_c_n_tvout_trans_num_data_out_V_data_V;
reg [31:0] ap_c_n_tvout_trans_num_data_out_V_keep_V;
reg [31:0] ap_c_n_tvout_trans_num_data_out_V_strb_V;
reg [31:0] ap_c_n_tvout_trans_num_data_out_V_last_V;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .data_in_TDATA(data_in_TDATA),
    .data_in_TVALID(data_in_TVALID),
    .data_in_TREADY(data_in_TREADY),
    .data_in_TKEEP(data_in_TKEEP),
    .data_in_TSTRB(data_in_TSTRB),
    .data_in_TLAST(data_in_TLAST),
    .data_out_TDATA(data_out_TDATA),
    .data_out_TVALID(data_out_TVALID),
    .data_out_TREADY(data_out_TREADY),
    .data_out_TKEEP(data_out_TKEEP),
    .data_out_TSTRB(data_out_TSTRB),
    .data_out_TLAST(data_out_TLAST));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
assign AESL_ready = ready;








wire data_in_ready;
wire data_in_done;
wire [31:0] data_in_transaction;
wire axi_s_data_in_TVALID;
wire axi_s_data_in_TREADY;

AESL_axi_s_data_in AESL_AXI_S_data_in(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_data_in_TDATA(data_in_TDATA),
    .TRAN_data_in_TKEEP(data_in_TKEEP),
    .TRAN_data_in_TSTRB(data_in_TSTRB),
    .TRAN_data_in_TLAST(data_in_TLAST),
    .TRAN_data_in_TVALID(data_in_TVALID),
    .TRAN_data_in_TREADY(data_in_TREADY),
    .ready(data_in_ready),
    .done(data_in_done),
    .transaction(data_in_transaction));

assign data_in_ready = ready;
assign data_in_done = 0;
wire data_out_ready;
wire data_out_done;
wire [31:0] data_out_transaction;
wire axi_s_data_out_TVALID;
wire axi_s_data_out_TREADY;

AESL_axi_s_data_out AESL_AXI_S_data_out(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_data_out_TDATA(data_out_TDATA),
    .TRAN_data_out_TKEEP(data_out_TKEEP),
    .TRAN_data_out_TSTRB(data_out_TSTRB),
    .TRAN_data_out_TLAST(data_out_TLAST),
    .TRAN_data_out_TVALID(data_out_TVALID),
    .TRAN_data_out_TREADY(data_out_TREADY),
    .ready(data_out_ready),
    .done(data_out_done),
    .transaction(data_out_transaction));

assign data_out_ready = 0;
assign data_out_done = AESL_done;

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_data_in_V_data_V;
reg [31:0] size_data_in_V_data_V;
reg [31:0] size_data_in_V_data_V_backup;
reg end_data_in_V_keep_V;
reg [31:0] size_data_in_V_keep_V;
reg [31:0] size_data_in_V_keep_V_backup;
reg end_data_in_V_strb_V;
reg [31:0] size_data_in_V_strb_V;
reg [31:0] size_data_in_V_strb_V_backup;
reg end_data_in_V_last_V;
reg [31:0] size_data_in_V_last_V;
reg [31:0] size_data_in_V_last_V_backup;
reg end_data_out_V_data_V;
reg [31:0] size_data_out_V_data_V;
reg [31:0] size_data_out_V_data_V_backup;
reg end_data_out_V_keep_V;
reg [31:0] size_data_out_V_keep_V;
reg [31:0] size_data_out_V_keep_V_backup;
reg end_data_out_V_strb_V;
reg [31:0] size_data_out_V_strb_V;
reg [31:0] size_data_out_V_strb_V_backup;
reg end_data_out_V_last_V;
reg [31:0] size_data_out_V_last_V;
reg [31:0] size_data_out_V_last_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
    // data_in_V_data_V : axi_s
    reg ready_data_in_V_data_V;
    
    always @ (*) begin
        if (end_data_in_V_data_V) begin
            ready_data_in_V_data_V <= 1;
        end else if (ap_c_n_tvin_trans_num_data_in_V_data_V > ready_cnt) begin
            ready_data_in_V_data_V <= 1;
        end else begin
            ready_data_in_V_data_V <= 0;
        end
    end
    
    // data_out_V_data_V : axi_s
    reg ready_data_out_V_data_V;
    
    always @ (*) begin
        if (end_data_out_V_data_V) begin
            ready_data_out_V_data_V <= 1;
        end else if (ap_c_n_tvin_trans_num_data_out_V_data_V > ready_cnt) begin
            ready_data_out_V_data_V <= 1;
        end else begin
            ready_data_out_V_data_V <= 0;
        end
    end
    
    // start
    always @ (*) begin
        if (~AESL_reset) begin
            start <= 0;
        end else begin
            start <= ready_data_in_V_data_V && ready_data_out_V_data_V;
        end
    end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait(AESL_reset === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = AESL_start;
assign ready_wire = ready;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    // data_out_V_data_V : axi_s
    reg done_data_out_V_data_V;
    
    always @ (*) begin
        if (end_data_out_V_data_V) begin
            done_data_out_V_data_V <= 1;
        end else if (ap_c_n_tvout_trans_num_data_out_V_data_V > done_cnt + 1) begin
            done_data_out_V_data_V <= 1;
        end else if (size_data_out_V_data_V > 1) begin
            done_data_out_V_data_V <= 0;
        end else if (data_out_TVALID == 1) begin
            done_data_out_V_data_V <= 1;
        end else begin
            done_data_out_V_data_V <= 0;
        end
    end
    
    // data_out_V_keep_V : axi_s
    reg done_data_out_V_keep_V;
    
    always @ (*) begin
        if (end_data_out_V_keep_V) begin
            done_data_out_V_keep_V <= 1;
        end else if (ap_c_n_tvout_trans_num_data_out_V_keep_V > done_cnt + 1) begin
            done_data_out_V_keep_V <= 1;
        end else if (size_data_out_V_keep_V > 1) begin
            done_data_out_V_keep_V <= 0;
        end else if (data_out_TVALID == 1) begin
            done_data_out_V_keep_V <= 1;
        end else begin
            done_data_out_V_keep_V <= 0;
        end
    end
    
    // data_out_V_strb_V : axi_s
    reg done_data_out_V_strb_V;
    
    always @ (*) begin
        if (end_data_out_V_strb_V) begin
            done_data_out_V_strb_V <= 1;
        end else if (ap_c_n_tvout_trans_num_data_out_V_strb_V > done_cnt + 1) begin
            done_data_out_V_strb_V <= 1;
        end else if (size_data_out_V_strb_V > 1) begin
            done_data_out_V_strb_V <= 0;
        end else if (data_out_TVALID == 1) begin
            done_data_out_V_strb_V <= 1;
        end else begin
            done_data_out_V_strb_V <= 0;
        end
    end
    
    // data_out_V_last_V : axi_s
    reg done_data_out_V_last_V;
    
    always @ (*) begin
        if (end_data_out_V_last_V) begin
            done_data_out_V_last_V <= 1;
        end else if (ap_c_n_tvout_trans_num_data_out_V_last_V > done_cnt + 1) begin
            done_data_out_V_last_V <= 1;
        end else if (size_data_out_V_last_V > 1) begin
            done_data_out_V_last_V <= 0;
        end else if (data_out_TVALID == 1) begin
            done_data_out_V_last_V <= 1;
        end else begin
            done_data_out_V_last_V <= 0;
        end
    end
    
    // AESL_done
    always @ (*) begin
        if (~AESL_reset) begin
            AESL_done <= 0;
        end else begin
            AESL_done <= done_data_out_V_data_V && done_data_out_V_keep_V && done_data_out_V_strb_V && done_data_out_V_last_V;
        end
    end
    
    `define STREAM_SIZE_IN_data_in_V_data_V "../tv/stream_size/stream_size_in_data_in_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_data_in_V_data_V
        integer fp_data_in_V_data_V;
        reg [127:0] token_data_in_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_data_in_V_data_V = 0;
        end_data_in_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_data_in_V_data_V = $fopen(`STREAM_SIZE_IN_data_in_V_data_V, "r");
        if(fp_data_in_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_data_in_V_data_V);
            $finish;
        end
        read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be [[[runtime]]]
        if (token_data_in_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_data_in_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_data_in_V_data_V = 0;
        size_data_in_V_data_V_backup = 0;
        while (size_data_in_V_data_V == 0 && end_data_in_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_data_in_V_data_V = ap_c_n_tvin_trans_num_data_in_V_data_V + 1;
            read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_in_V_data_V == "[[transaction]]") begin
                read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be transaction number
                read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_data_in_V_data_V, "%d", size_data_in_V_data_V);
                if (size_data_in_V_data_V > 0) begin
                    size_data_in_V_data_V_backup = size_data_in_V_data_V;
                end
                read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be [[/transaction]]
            end else if (token_data_in_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_data_in_V_data_V);
                end_data_in_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_data_in_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_in_V_data_V == 0) begin
                if ((data_in_TREADY & data_in_TVALID) == 1) begin
                    if (size_data_in_V_data_V > 0) begin
                        size_data_in_V_data_V = size_data_in_V_data_V - 1;
                        while (size_data_in_V_data_V == 0 && end_data_in_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_data_in_V_data_V = ap_c_n_tvin_trans_num_data_in_V_data_V + 1;
                            read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_in_V_data_V == "[[transaction]]") begin
                                read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be transaction number
                                read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_data_in_V_data_V, "%d", size_data_in_V_data_V);
                                if (size_data_in_V_data_V > 0) begin
                                    size_data_in_V_data_V_backup = size_data_in_V_data_V;
                                end
                                read_token(fp_data_in_V_data_V, token_data_in_V_data_V); // should be [[/transaction]]
                            end else if (token_data_in_V_data_V == "[[[/runtime]]]") begin
                                size_data_in_V_data_V = size_data_in_V_data_V_backup;
                                $fclose(fp_data_in_V_data_V);
                                end_data_in_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_data_in_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((data_in_TREADY & data_in_TVALID) == 1) begin
                    if (size_data_in_V_data_V > 0) begin
                        size_data_in_V_data_V = size_data_in_V_data_V - 1;
                        if (size_data_in_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_data_in_V_data_V = ap_c_n_tvin_trans_num_data_in_V_data_V + 1;
                            size_data_in_V_data_V = size_data_in_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    initial begin : proc_ap_c_n_tvin_trans_num_data_out_V_data_V
        ap_c_n_tvin_trans_num_data_out_V_data_V = AUTOTB_TRANSACTION_NUM + 1;
    end
    `define STREAM_SIZE_OUT_data_out_V_data_V "../tv/stream_size/stream_size_out_data_out_V_data_V.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_data_out_V_data_V
        integer fp_data_out_V_data_V;
        reg [127:0] token_data_out_V_data_V;
        integer ret;
        
        ap_c_n_tvout_trans_num_data_out_V_data_V = 0;
        end_data_out_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_data_out_V_data_V = $fopen(`STREAM_SIZE_OUT_data_out_V_data_V, "r");
        if (fp_data_out_V_data_V == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_data_out_V_data_V);
            $finish;
        end
        read_token(fp_data_out_V_data_V, token_data_out_V_data_V);
        if (token_data_out_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_data_out_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_data_out_V_data_V = 0;
        while (size_data_out_V_data_V == 0 && end_data_out_V_data_V == 0) begin
            ap_c_n_tvout_trans_num_data_out_V_data_V = ap_c_n_tvout_trans_num_data_out_V_data_V + 1;
            read_token(fp_data_out_V_data_V, token_data_out_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_out_V_data_V == "[[transaction]]") begin
                read_token(fp_data_out_V_data_V, token_data_out_V_data_V); // should be transaction number
                read_token(fp_data_out_V_data_V, token_data_out_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_data_out_V_data_V, "%d", size_data_out_V_data_V);
                read_token(fp_data_out_V_data_V, token_data_out_V_data_V); // should be [[/transaction]]
            end else if (token_data_out_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_data_out_V_data_V);
                end_data_out_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_data_out_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_out_V_data_V == 0) begin 
                if (data_out_TVALID == 1) begin
                    if (size_data_out_V_data_V > 0) begin
                        size_data_out_V_data_V = size_data_out_V_data_V - 1;
                        while (size_data_out_V_data_V == 0 && end_data_out_V_data_V == 0) begin
                            ap_c_n_tvout_trans_num_data_out_V_data_V = ap_c_n_tvout_trans_num_data_out_V_data_V + 1;
                            read_token(fp_data_out_V_data_V, token_data_out_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_out_V_data_V == "[[transaction]]") begin
                                read_token(fp_data_out_V_data_V, token_data_out_V_data_V); // should be transaction number
                                read_token(fp_data_out_V_data_V, token_data_out_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_data_out_V_data_V, "%d", size_data_out_V_data_V);
                                read_token(fp_data_out_V_data_V, token_data_out_V_data_V); // should be [[/transaction]]
                            end else if (token_data_out_V_data_V == "[[[/runtime]]]") begin
                                $fclose(fp_data_out_V_data_V);
                                end_data_out_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_data_out_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
    
    initial begin : proc_ap_c_n_tvin_trans_num_data_out_V_keep_V
        ap_c_n_tvin_trans_num_data_out_V_keep_V = AUTOTB_TRANSACTION_NUM + 1;
    end
    `define STREAM_SIZE_OUT_data_out_V_keep_V "../tv/stream_size/stream_size_out_data_out_V_keep_V.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_data_out_V_keep_V
        integer fp_data_out_V_keep_V;
        reg [127:0] token_data_out_V_keep_V;
        integer ret;
        
        ap_c_n_tvout_trans_num_data_out_V_keep_V = 0;
        end_data_out_V_keep_V = 0;
        wait (AESL_reset === 1);
        
        fp_data_out_V_keep_V = $fopen(`STREAM_SIZE_OUT_data_out_V_keep_V, "r");
        if (fp_data_out_V_keep_V == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_data_out_V_keep_V);
            $finish;
        end
        read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V);
        if (token_data_out_V_keep_V != "[[[runtime]]]") begin
            $display("ERROR: token_data_out_V_keep_V != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_data_out_V_keep_V = 0;
        while (size_data_out_V_keep_V == 0 && end_data_out_V_keep_V == 0) begin
            ap_c_n_tvout_trans_num_data_out_V_keep_V = ap_c_n_tvout_trans_num_data_out_V_keep_V + 1;
            read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_out_V_keep_V == "[[transaction]]") begin
                read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V); // should be transaction number
                read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V); // should be size for hls::stream
                ret = $sscanf(token_data_out_V_keep_V, "%d", size_data_out_V_keep_V);
                read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V); // should be [[/transaction]]
            end else if (token_data_out_V_keep_V == "[[[/runtime]]]") begin
                $fclose(fp_data_out_V_keep_V);
                end_data_out_V_keep_V = 1;
            end else begin
                $display("ERROR: unknown token_data_out_V_keep_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_out_V_keep_V == 0) begin 
                if (data_out_TVALID == 1) begin
                    if (size_data_out_V_keep_V > 0) begin
                        size_data_out_V_keep_V = size_data_out_V_keep_V - 1;
                        while (size_data_out_V_keep_V == 0 && end_data_out_V_keep_V == 0) begin
                            ap_c_n_tvout_trans_num_data_out_V_keep_V = ap_c_n_tvout_trans_num_data_out_V_keep_V + 1;
                            read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_out_V_keep_V == "[[transaction]]") begin
                                read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V); // should be transaction number
                                read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V); // should be size for hls::stream
                                ret = $sscanf(token_data_out_V_keep_V, "%d", size_data_out_V_keep_V);
                                read_token(fp_data_out_V_keep_V, token_data_out_V_keep_V); // should be [[/transaction]]
                            end else if (token_data_out_V_keep_V == "[[[/runtime]]]") begin
                                $fclose(fp_data_out_V_keep_V);
                                end_data_out_V_keep_V = 1;
                            end else begin
                                $display("ERROR: unknown token_data_out_V_keep_V");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
    
    initial begin : proc_ap_c_n_tvin_trans_num_data_out_V_strb_V
        ap_c_n_tvin_trans_num_data_out_V_strb_V = AUTOTB_TRANSACTION_NUM + 1;
    end
    `define STREAM_SIZE_OUT_data_out_V_strb_V "../tv/stream_size/stream_size_out_data_out_V_strb_V.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_data_out_V_strb_V
        integer fp_data_out_V_strb_V;
        reg [127:0] token_data_out_V_strb_V;
        integer ret;
        
        ap_c_n_tvout_trans_num_data_out_V_strb_V = 0;
        end_data_out_V_strb_V = 0;
        wait (AESL_reset === 1);
        
        fp_data_out_V_strb_V = $fopen(`STREAM_SIZE_OUT_data_out_V_strb_V, "r");
        if (fp_data_out_V_strb_V == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_data_out_V_strb_V);
            $finish;
        end
        read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V);
        if (token_data_out_V_strb_V != "[[[runtime]]]") begin
            $display("ERROR: token_data_out_V_strb_V != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_data_out_V_strb_V = 0;
        while (size_data_out_V_strb_V == 0 && end_data_out_V_strb_V == 0) begin
            ap_c_n_tvout_trans_num_data_out_V_strb_V = ap_c_n_tvout_trans_num_data_out_V_strb_V + 1;
            read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_out_V_strb_V == "[[transaction]]") begin
                read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V); // should be transaction number
                read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V); // should be size for hls::stream
                ret = $sscanf(token_data_out_V_strb_V, "%d", size_data_out_V_strb_V);
                read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V); // should be [[/transaction]]
            end else if (token_data_out_V_strb_V == "[[[/runtime]]]") begin
                $fclose(fp_data_out_V_strb_V);
                end_data_out_V_strb_V = 1;
            end else begin
                $display("ERROR: unknown token_data_out_V_strb_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_out_V_strb_V == 0) begin 
                if (data_out_TVALID == 1) begin
                    if (size_data_out_V_strb_V > 0) begin
                        size_data_out_V_strb_V = size_data_out_V_strb_V - 1;
                        while (size_data_out_V_strb_V == 0 && end_data_out_V_strb_V == 0) begin
                            ap_c_n_tvout_trans_num_data_out_V_strb_V = ap_c_n_tvout_trans_num_data_out_V_strb_V + 1;
                            read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_out_V_strb_V == "[[transaction]]") begin
                                read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V); // should be transaction number
                                read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V); // should be size for hls::stream
                                ret = $sscanf(token_data_out_V_strb_V, "%d", size_data_out_V_strb_V);
                                read_token(fp_data_out_V_strb_V, token_data_out_V_strb_V); // should be [[/transaction]]
                            end else if (token_data_out_V_strb_V == "[[[/runtime]]]") begin
                                $fclose(fp_data_out_V_strb_V);
                                end_data_out_V_strb_V = 1;
                            end else begin
                                $display("ERROR: unknown token_data_out_V_strb_V");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
    
    initial begin : proc_ap_c_n_tvin_trans_num_data_out_V_last_V
        ap_c_n_tvin_trans_num_data_out_V_last_V = AUTOTB_TRANSACTION_NUM + 1;
    end
    `define STREAM_SIZE_OUT_data_out_V_last_V "../tv/stream_size/stream_size_out_data_out_V_last_V.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_data_out_V_last_V
        integer fp_data_out_V_last_V;
        reg [127:0] token_data_out_V_last_V;
        integer ret;
        
        ap_c_n_tvout_trans_num_data_out_V_last_V = 0;
        end_data_out_V_last_V = 0;
        wait (AESL_reset === 1);
        
        fp_data_out_V_last_V = $fopen(`STREAM_SIZE_OUT_data_out_V_last_V, "r");
        if (fp_data_out_V_last_V == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_data_out_V_last_V);
            $finish;
        end
        read_token(fp_data_out_V_last_V, token_data_out_V_last_V);
        if (token_data_out_V_last_V != "[[[runtime]]]") begin
            $display("ERROR: token_data_out_V_last_V != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_data_out_V_last_V = 0;
        while (size_data_out_V_last_V == 0 && end_data_out_V_last_V == 0) begin
            ap_c_n_tvout_trans_num_data_out_V_last_V = ap_c_n_tvout_trans_num_data_out_V_last_V + 1;
            read_token(fp_data_out_V_last_V, token_data_out_V_last_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_out_V_last_V == "[[transaction]]") begin
                read_token(fp_data_out_V_last_V, token_data_out_V_last_V); // should be transaction number
                read_token(fp_data_out_V_last_V, token_data_out_V_last_V); // should be size for hls::stream
                ret = $sscanf(token_data_out_V_last_V, "%d", size_data_out_V_last_V);
                read_token(fp_data_out_V_last_V, token_data_out_V_last_V); // should be [[/transaction]]
            end else if (token_data_out_V_last_V == "[[[/runtime]]]") begin
                $fclose(fp_data_out_V_last_V);
                end_data_out_V_last_V = 1;
            end else begin
                $display("ERROR: unknown token_data_out_V_last_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_out_V_last_V == 0) begin 
                if (data_out_TVALID == 1) begin
                    if (size_data_out_V_last_V > 0) begin
                        size_data_out_V_last_V = size_data_out_V_last_V - 1;
                        while (size_data_out_V_last_V == 0 && end_data_out_V_last_V == 0) begin
                            ap_c_n_tvout_trans_num_data_out_V_last_V = ap_c_n_tvout_trans_num_data_out_V_last_V + 1;
                            read_token(fp_data_out_V_last_V, token_data_out_V_last_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_out_V_last_V == "[[transaction]]") begin
                                read_token(fp_data_out_V_last_V, token_data_out_V_last_V); // should be transaction number
                                read_token(fp_data_out_V_last_V, token_data_out_V_last_V); // should be size for hls::stream
                                ret = $sscanf(token_data_out_V_last_V, "%d", size_data_out_V_last_V);
                                read_token(fp_data_out_V_last_V, token_data_out_V_last_V); // should be [[/transaction]]
                            end else if (token_data_out_V_last_V == "[[[/runtime]]]") begin
                                $fclose(fp_data_out_V_last_V);
                                end_data_out_V_last_V = 1;
                            end else begin
                                $display("ERROR: unknown token_data_out_V_last_V");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end

reg dump_tvout_finish_data_out_V_data_V;

initial begin : dump_tvout_runtime_sign_data_out_V_data_V
    integer fp;
    dump_tvout_finish_data_out_V_data_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_data_out_V_data_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data_out_V_data_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data_out_V_data_V = 1;
end


reg dump_tvout_finish_data_out_V_keep_V;

initial begin : dump_tvout_runtime_sign_data_out_V_keep_V
    integer fp;
    dump_tvout_finish_data_out_V_keep_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_data_out_V_keep_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data_out_V_keep_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data_out_V_keep_V = 1;
end


reg dump_tvout_finish_data_out_V_strb_V;

initial begin : dump_tvout_runtime_sign_data_out_V_strb_V
    integer fp;
    dump_tvout_finish_data_out_V_strb_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_data_out_V_strb_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data_out_V_strb_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data_out_V_strb_V = 1;
end


reg dump_tvout_finish_data_out_V_last_V;

initial begin : dump_tvout_runtime_sign_data_out_V_last_V
    integer fp;
    dump_tvout_finish_data_out_V_last_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_data_out_V_last_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data_out_V_last_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data_out_V_last_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    integer real_cnt;
    integer valid_cnt;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;
        real_cnt = (start_cnt < finish_cnt) ? start_cnt : AUTOTB_TRANSACTION_NUM;
        valid_cnt = 0;

        for (i = 0; i < real_cnt; i = i + 1) begin
            // calculate latency
            if (finish_timestamp[i] >= start_timestamp[i]) begin
                latency[i] = finish_timestamp[i] - start_timestamp[i];
                if (latency[i] > latency_max) latency_max = latency[i];
                if (latency[i] < latency_min) latency_min = latency[i];
                latency_total = latency_total + latency[i];
                valid_cnt = valid_cnt + 1;
            end else begin
                latency[i] = 0;
            end
            // calculate interval
            if (real_cnt == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < real_cnt - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        if (valid_cnt > 0)
            latency_average = latency_total / valid_cnt;
        else
            latency_average = latency_total;
        if (real_cnt == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (real_cnt - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (real_cnt == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < real_cnt; i = i + 1) begin
                if (i < real_cnt - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
        if (start_cnt < finish_cnt)
            $display("Note: for this 'ap_ctrl_none' design the last %0d transactions have no output. In order to save runtime, cosim will end eariler after getting all needed output. So performance report only covers the first %0d transactions.",(finish_cnt - start_cnt), start_cnt);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_kernel_monitor_top kernel_monitor_top(
    .kernel_monitor_reset(~AESL_reset),
    .kernel_monitor_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule