// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_data_in_TDATA "../tv/cdatafile/c.deQAM.autotvin_data_in_V_data_V.dat"
`define INGRESS_STATUS_data_in_TDATA "../tv/stream_size/stream_ingress_status_data_in_V_data_V.dat"
`define TV_IN_data_in_TKEEP "../tv/cdatafile/c.deQAM.autotvin_data_in_V_keep_V.dat"
`define INGRESS_STATUS_data_in_TKEEP "../tv/stream_size/stream_ingress_status_data_in_V_keep_V.dat"
`define TV_IN_data_in_TSTRB "../tv/cdatafile/c.deQAM.autotvin_data_in_V_strb_V.dat"
`define INGRESS_STATUS_data_in_TSTRB "../tv/stream_size/stream_ingress_status_data_in_V_strb_V.dat"
`define TV_IN_data_in_TUSER "../tv/cdatafile/c.deQAM.autotvin_data_in_V_user_V.dat"
`define INGRESS_STATUS_data_in_TUSER "../tv/stream_size/stream_ingress_status_data_in_V_user_V.dat"
`define TV_IN_data_in_TLAST "../tv/cdatafile/c.deQAM.autotvin_data_in_V_last_V.dat"
`define INGRESS_STATUS_data_in_TLAST "../tv/stream_size/stream_ingress_status_data_in_V_last_V.dat"
`define TV_IN_data_in_TID "../tv/cdatafile/c.deQAM.autotvin_data_in_V_id_V.dat"
`define INGRESS_STATUS_data_in_TID "../tv/stream_size/stream_ingress_status_data_in_V_id_V.dat"
`define TV_IN_data_in_TDEST "../tv/cdatafile/c.deQAM.autotvin_data_in_V_dest_V.dat"
`define INGRESS_STATUS_data_in_TDEST "../tv/stream_size/stream_ingress_status_data_in_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_data_in (
    input clk,
    input reset,
    output [64 - 1:0] TRAN_data_in_TDATA,
    output [8 - 1:0] TRAN_data_in_TKEEP,
    output [8 - 1:0] TRAN_data_in_TSTRB,
    output TRAN_data_in_TUSER,
    output TRAN_data_in_TLAST,
    output TRAN_data_in_TID,
    output TRAN_data_in_TDEST,
    output TRAN_data_in_TVALID,
    input TRAN_data_in_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_data_in_TVALID_temp;
    wire data_in_TDATA_full;
    wire data_in_TDATA_empty;
    reg data_in_TDATA_write_en;
    reg [64 - 1:0] data_in_TDATA_write_data;
    reg data_in_TDATA_read_en;
    wire [64 - 1:0] data_in_TDATA_read_data;
    
    fifo #(65, 64) fifo_data_in_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_in_TDATA_write_en),
        .write_data(data_in_TDATA_write_data),
        .read_clock(clk),
        .read_en(data_in_TDATA_read_en),
        .read_data(data_in_TDATA_read_data),
        .full(data_in_TDATA_full),
        .empty(data_in_TDATA_empty));
    
    always @ (*) begin
        data_in_TDATA_write_en <= 0;
        data_in_TDATA_read_en <= TRAN_data_in_TREADY & TRAN_data_in_TVALID;
    end
    
    assign TRAN_data_in_TDATA = data_in_TDATA_read_data;
    wire data_in_TKEEP_full;
    wire data_in_TKEEP_empty;
    reg data_in_TKEEP_write_en;
    reg [8 - 1:0] data_in_TKEEP_write_data;
    reg data_in_TKEEP_read_en;
    wire [8 - 1:0] data_in_TKEEP_read_data;
    
    fifo #(65, 8) fifo_data_in_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_in_TKEEP_write_en),
        .write_data(data_in_TKEEP_write_data),
        .read_clock(clk),
        .read_en(data_in_TKEEP_read_en),
        .read_data(data_in_TKEEP_read_data),
        .full(data_in_TKEEP_full),
        .empty(data_in_TKEEP_empty));
    
    always @ (*) begin
        data_in_TKEEP_write_en <= 0;
        data_in_TKEEP_read_en <= TRAN_data_in_TREADY & TRAN_data_in_TVALID;
    end
    
    assign TRAN_data_in_TKEEP = data_in_TKEEP_read_data;
    wire data_in_TSTRB_full;
    wire data_in_TSTRB_empty;
    reg data_in_TSTRB_write_en;
    reg [8 - 1:0] data_in_TSTRB_write_data;
    reg data_in_TSTRB_read_en;
    wire [8 - 1:0] data_in_TSTRB_read_data;
    
    fifo #(65, 8) fifo_data_in_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_in_TSTRB_write_en),
        .write_data(data_in_TSTRB_write_data),
        .read_clock(clk),
        .read_en(data_in_TSTRB_read_en),
        .read_data(data_in_TSTRB_read_data),
        .full(data_in_TSTRB_full),
        .empty(data_in_TSTRB_empty));
    
    always @ (*) begin
        data_in_TSTRB_write_en <= 0;
        data_in_TSTRB_read_en <= TRAN_data_in_TREADY & TRAN_data_in_TVALID;
    end
    
    assign TRAN_data_in_TSTRB = data_in_TSTRB_read_data;
    wire data_in_TUSER_full;
    wire data_in_TUSER_empty;
    reg data_in_TUSER_write_en;
    reg [1 - 1:0] data_in_TUSER_write_data;
    reg data_in_TUSER_read_en;
    wire [1 - 1:0] data_in_TUSER_read_data;
    
    fifo #(65, 1) fifo_data_in_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_in_TUSER_write_en),
        .write_data(data_in_TUSER_write_data),
        .read_clock(clk),
        .read_en(data_in_TUSER_read_en),
        .read_data(data_in_TUSER_read_data),
        .full(data_in_TUSER_full),
        .empty(data_in_TUSER_empty));
    
    always @ (*) begin
        data_in_TUSER_write_en <= 0;
        data_in_TUSER_read_en <= TRAN_data_in_TREADY & TRAN_data_in_TVALID;
    end
    
    assign TRAN_data_in_TUSER = data_in_TUSER_read_data;
    wire data_in_TLAST_full;
    wire data_in_TLAST_empty;
    reg data_in_TLAST_write_en;
    reg [1 - 1:0] data_in_TLAST_write_data;
    reg data_in_TLAST_read_en;
    wire [1 - 1:0] data_in_TLAST_read_data;
    
    fifo #(65, 1) fifo_data_in_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_in_TLAST_write_en),
        .write_data(data_in_TLAST_write_data),
        .read_clock(clk),
        .read_en(data_in_TLAST_read_en),
        .read_data(data_in_TLAST_read_data),
        .full(data_in_TLAST_full),
        .empty(data_in_TLAST_empty));
    
    always @ (*) begin
        data_in_TLAST_write_en <= 0;
        data_in_TLAST_read_en <= TRAN_data_in_TREADY & TRAN_data_in_TVALID;
    end
    
    assign TRAN_data_in_TLAST = data_in_TLAST_read_data;
    wire data_in_TID_full;
    wire data_in_TID_empty;
    reg data_in_TID_write_en;
    reg [1 - 1:0] data_in_TID_write_data;
    reg data_in_TID_read_en;
    wire [1 - 1:0] data_in_TID_read_data;
    
    fifo #(65, 1) fifo_data_in_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_in_TID_write_en),
        .write_data(data_in_TID_write_data),
        .read_clock(clk),
        .read_en(data_in_TID_read_en),
        .read_data(data_in_TID_read_data),
        .full(data_in_TID_full),
        .empty(data_in_TID_empty));
    
    always @ (*) begin
        data_in_TID_write_en <= 0;
        data_in_TID_read_en <= TRAN_data_in_TREADY & TRAN_data_in_TVALID;
    end
    
    assign TRAN_data_in_TID = data_in_TID_read_data;
    wire data_in_TDEST_full;
    wire data_in_TDEST_empty;
    reg data_in_TDEST_write_en;
    reg [1 - 1:0] data_in_TDEST_write_data;
    reg data_in_TDEST_read_en;
    wire [1 - 1:0] data_in_TDEST_read_data;
    
    fifo #(65, 1) fifo_data_in_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_in_TDEST_write_en),
        .write_data(data_in_TDEST_write_data),
        .read_clock(clk),
        .read_en(data_in_TDEST_read_en),
        .read_data(data_in_TDEST_read_data),
        .full(data_in_TDEST_full),
        .empty(data_in_TDEST_empty));
    
    always @ (*) begin
        data_in_TDEST_write_en <= 0;
        data_in_TDEST_read_en <= TRAN_data_in_TREADY & TRAN_data_in_TVALID;
    end
    
    assign TRAN_data_in_TDEST = data_in_TDEST_read_data;
    assign TRAN_data_in_TVALID = TRAN_data_in_TVALID_temp;

    
    assign TRAN_data_in_TVALID_temp = ~(data_in_TDATA_empty || data_in_TKEEP_empty || data_in_TSTRB_empty || data_in_TUSER_empty || data_in_TLAST_empty || data_in_TID_empty || data_in_TDEST_empty);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [151:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [151:0] rm_0x(input [151:0] token);
        reg [151:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_data_in_TDATA;
    
    assign transaction = transaction_load_data_in_TDATA;
    
    initial begin : AXI_stream_driver_data_in_TDATA
        integer fp;
        reg [151:0] token;
        reg [64 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_data_in_TDATA = 0;
        fifo_data_in_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_data_in_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_data_in_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_data_in_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_data_in_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_data_in_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_data_in_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_data_in_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_data_in_TDATA.snapshot();
                end else begin
                    fifo_data_in_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_data_in_TDATA = transaction_load_data_in_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_data_in_TKEEP;
    
    initial begin : AXI_stream_driver_data_in_TKEEP
        integer fp;
        reg [151:0] token;
        reg [8 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_data_in_TKEEP = 0;
        fifo_data_in_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_data_in_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_data_in_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_data_in_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_data_in_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_data_in_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_data_in_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_data_in_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_data_in_TKEEP.snapshot();
                end else begin
                    fifo_data_in_TKEEP.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_data_in_TKEEP = transaction_load_data_in_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_data_in_TSTRB;
    
    initial begin : AXI_stream_driver_data_in_TSTRB
        integer fp;
        reg [151:0] token;
        reg [8 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_data_in_TSTRB = 0;
        fifo_data_in_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_data_in_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_data_in_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_data_in_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_data_in_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_data_in_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_data_in_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_data_in_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_data_in_TSTRB.snapshot();
                end else begin
                    fifo_data_in_TSTRB.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_data_in_TSTRB = transaction_load_data_in_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_data_in_TUSER;
    
    initial begin : AXI_stream_driver_data_in_TUSER
        integer fp;
        reg [151:0] token;
        reg [1 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_data_in_TUSER = 0;
        fifo_data_in_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_data_in_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_data_in_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_data_in_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_data_in_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_data_in_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_data_in_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_data_in_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_data_in_TUSER.snapshot();
                end else begin
                    fifo_data_in_TUSER.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_data_in_TUSER = transaction_load_data_in_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_data_in_TLAST;
    
    initial begin : AXI_stream_driver_data_in_TLAST
        integer fp;
        reg [151:0] token;
        reg [1 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_data_in_TLAST = 0;
        fifo_data_in_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_data_in_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_data_in_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_data_in_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_data_in_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_data_in_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_data_in_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_data_in_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_data_in_TLAST.snapshot();
                end else begin
                    fifo_data_in_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_data_in_TLAST = transaction_load_data_in_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_data_in_TID;
    
    initial begin : AXI_stream_driver_data_in_TID
        integer fp;
        reg [151:0] token;
        reg [1 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_data_in_TID = 0;
        fifo_data_in_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_data_in_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_data_in_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_data_in_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_data_in_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_data_in_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_data_in_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_data_in_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_data_in_TID.snapshot();
                end else begin
                    fifo_data_in_TID.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_data_in_TID = transaction_load_data_in_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_data_in_TDEST;
    
    initial begin : AXI_stream_driver_data_in_TDEST
        integer fp;
        reg [151:0] token;
        reg [1 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_data_in_TDEST = 0;
        fifo_data_in_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_data_in_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_data_in_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_data_in_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_data_in_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_data_in_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_data_in_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_data_in_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_data_in_TDEST.snapshot();
                end else begin
                    fifo_data_in_TDEST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_data_in_TDEST = transaction_load_data_in_TDEST + 1;
            end
        end
    end

endmodule
