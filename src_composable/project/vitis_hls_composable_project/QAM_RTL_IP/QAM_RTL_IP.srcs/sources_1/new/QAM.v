`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2020 01:13:15 PM
// Design Name: 
// Module Name: inverter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module QAM #(parameter DATA_WIDTH=64,
             parameter IN_WL=22,
             parameter IN_IL=7)
   (
    input    axi_clk,
    input    axi_reset_n,
    //AXI4-S slave i/f
    input    s_axis_valid,
    input [DATA_WIDTH-1:0] s_axis_data,
    input s_axis_last,
    output s_axis_ready,
    //AXI4-S master i/f
    output reg  m_axis_valid,
    output reg [DATA_WIDTH-1:0] m_axis_data,
    output reg m_axis_last,
    input    m_axis_ready
    );
    
    reg [DATA_WIDTH-1:0] n_m_axis_data;
    reg cs,ns;
    
    
    
    always @(posedge axi_clk ) begin   //or negedge axi_reset_n
        if(~axi_reset_n) begin
            m_axis_data <= 0;
            m_axis_last <= 0;
            m_axis_valid <= 0;
            cs <= 0;
            //s_axis_ready <= 0;
        end
        else begin
            m_axis_data <= n_m_axis_data;
            m_axis_last <= s_axis_last;
            m_axis_valid <= s_axis_valid;
            cs <= ns;
            //s_axis_ready <= m_axis_ready;
        end
    end
    //------------------------------------------combination---------------------------------------//
    assign s_axis_ready = m_axis_ready;
    always @(*) begin
       if(s_axis_valid & s_axis_ready) begin
           case(cs)
                1'd0: begin
                    n_m_axis_data = s_axis_data;
                    if(s_axis_data[63:48] == 16'hffff) begin
                        ns = 1'd1;
                    end
                    else begin
                        ns = 1'd0;
                    end
                end
                default: begin
                    ns = cs;
                    case(s_axis_data[1:0])
                        2'd0: begin   //0
                            n_m_axis_data[IN_WL-1:IN_WL-IN_IL] = -7'd3;
                        end
                        2'd1: begin   //1
                            n_m_axis_data[IN_WL-1:IN_WL-IN_IL] = -7'd1;
                        end
                        2'd2: begin   //2
                            n_m_axis_data[IN_WL-1:IN_WL-IN_IL] = 7'd3;
                        end
                        default: begin //3
                            n_m_axis_data[IN_WL-1:IN_WL-IN_IL] = 7'd1;
                        end                    
                    endcase
                    case(s_axis_data[3:2])
                        2'd0: begin   //0
                            n_m_axis_data[32+IN_WL-1:32+IN_WL-IN_IL] = -7'd3;
                        end
                        2'd1: begin   //1
                            n_m_axis_data[32+IN_WL-1:32+IN_WL-IN_IL] = -7'd1;
                        end
                        2'd2: begin   //2
                            n_m_axis_data[32+IN_WL-1:32+IN_WL-IN_IL] = 7'd3;
                        end
                        default: begin //3
                            n_m_axis_data[32+IN_WL-1:32+IN_WL-IN_IL] = 7'd1;
                        end                    
                    endcase
                end
            endcase
       end
       else begin
            n_m_axis_data = m_axis_data;
            ns = cs;
       end
    end
    
endmodule