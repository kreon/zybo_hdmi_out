// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

`timescale 1ns/1ps
//RAW latency 1 

module hdmi_out_v_tpg_0_0_fifo_w12_d2_S
#(parameter
    MEM_STYLE    = "shiftReg",
    DATA_WIDTH   = 12,
    ADDR_WIDTH   = 2,
    DEPTH        = 2)
(
    // system signal
    input  wire                  clk,
    input  wire                  reset,

    // write
    output wire                  if_full_n,
    input  wire                  if_write_ce,
    input  wire                  if_write,
    input  wire [DATA_WIDTH-1:0] if_din,
    
    // read 
    output wire [ADDR_WIDTH:0]   if_num_data_valid, // for FRP
    output wire [ADDR_WIDTH:0]   if_fifo_cap,       // for FRP

    output wire                  if_empty_n,
    input  wire                  if_read_ce,
    input  wire                  if_read,
    output wire [DATA_WIDTH-1:0] if_dout
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
    wire [ADDR_WIDTH-1:0] addr;
    wire                  push;
    wire                  pop;
    reg signed [ADDR_WIDTH:0] mOutPtr;
    reg                   empty_n = 1'b0;
    reg                   full_n = 1'b1; 
    // has num_data_valid? 
    reg  [ADDR_WIDTH:0]   num_data_valid; //yes 
//------------------------Instantiation------------------
    hdmi_out_v_tpg_0_0_fifo_w12_d2_S_ShiftReg 
    #(  .DATA_WIDTH (DATA_WIDTH),
        .ADDR_WIDTH (ADDR_WIDTH),
        .DEPTH      (DEPTH))
    U_hdmi_out_v_tpg_0_0_fifo_w12_d2_S_ShiftReg (
        .clk        (clk),
        .we         (push),
        .addr       (addr),
        .din        (if_din),
        .dout       (if_dout)
    );
//------------------------Task and function--------------

//------------------------Body---------------------------
    // num_data_valid 
    assign if_num_data_valid = num_data_valid;
    assign if_fifo_cap       = DEPTH;

    // almost full/empty 

    // program full/empty 

    assign if_full_n  = full_n; 
    assign if_empty_n = empty_n;

    assign push       = full_n & if_write_ce & if_write;
    assign pop        = empty_n & if_read_ce & if_read;

    assign addr       = mOutPtr[ADDR_WIDTH] == 1'b0 ? mOutPtr[ADDR_WIDTH-1:0] : {ADDR_WIDTH{1'b0}};

    // mOutPtr
    always @(posedge clk) begin
        if (reset)
            mOutPtr <= {ADDR_WIDTH+1{1'b1}};
        else if (push & ~pop)
            mOutPtr <= mOutPtr + 1'b1;
        else if (~push & pop)
            mOutPtr <= mOutPtr - 1'b1;
    end

    // full_n
    always @(posedge clk) begin
        if (reset)
            full_n <= 1'b1;
        else if ((push & ~pop) && (mOutPtr == DEPTH - 2))
            full_n <= 1'b0;
        else if (~push & pop)
            full_n <= 1'b1;
    end

    // empty_n
    always @(posedge clk) begin
        if (reset)
            empty_n <= 1'b0;
        else if (push & ~pop)
            empty_n <= 1'b1;
        else if ((~push & pop) && (mOutPtr == 0))
            empty_n <= 1'b0;
    end

    // almost_full_n 

    // almost_empty_n 

    // prog_full_n 
 
    // prog_empty_n 

    // num_data_valid 
    always @(posedge clk) begin
        if (reset)
            num_data_valid <= {ADDR_WIDTH+1{1'b0}};
        else if ( push & ~pop)
            num_data_valid <= num_data_valid + 1;
        else if (~push & pop)
            num_data_valid <= num_data_valid - 1;
    end // 

endmodule  


module hdmi_out_v_tpg_0_0_fifo_w12_d2_S_ShiftReg
#(parameter
    DATA_WIDTH  = 12,
    ADDR_WIDTH  = 2,
    DEPTH       = 2)
(
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  we,
    input  wire [ADDR_WIDTH-1:0] addr,
    input  wire [DATA_WIDTH-1:0] din,
    output wire [DATA_WIDTH-1:0] dout
);

    reg [DATA_WIDTH-1:0] SRL_SIG [0:DEPTH-1];
    integer i;

    always @ (posedge clk) begin
        if (we) begin
            for (i=0; i<DEPTH-1; i=i+1)
                SRL_SIG[i+1] <= SRL_SIG[i];
            SRL_SIG[0] <= din;
        end
    end

    assign dout = SRL_SIG[addr];

endmodule