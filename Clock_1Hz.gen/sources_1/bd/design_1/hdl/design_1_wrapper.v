//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Fri Dec 19 12:17:19 2025
//Host        : SAI-SRI-VARDHAN running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Reset,
    clk_1Hz,
    sys_clock);
  input Reset;
  output clk_1Hz;
  input sys_clock;

  wire Reset;
  wire clk_1Hz;
  wire sys_clock;

  design_1 design_1_i
       (.Reset(Reset),
        .clk_1Hz(clk_1Hz),
        .sys_clock(sys_clock));
endmodule
