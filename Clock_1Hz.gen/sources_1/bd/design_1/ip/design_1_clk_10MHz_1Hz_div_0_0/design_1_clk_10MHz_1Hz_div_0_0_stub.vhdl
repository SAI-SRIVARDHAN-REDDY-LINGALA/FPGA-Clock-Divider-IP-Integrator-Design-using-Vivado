-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri Dec 19 12:19:03 2025
-- Host        : SAI-SRI-VARDHAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/Basys_3_Projects/Clock_1Hz/Clock_1Hz.gen/sources_1/bd/design_1/ip/design_1_clk_10MHz_1Hz_div_0_0/design_1_clk_10MHz_1Hz_div_0_0_stub.vhdl
-- Design      : design_1_clk_10MHz_1Hz_div_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_clk_10MHz_1Hz_div_0_0 is
  Port ( 
    clk_10MHz : in STD_LOGIC;
    Reset : in STD_LOGIC;
    clk_1Hz : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_clk_10MHz_1Hz_div_0_0 : entity is "design_1_clk_10MHz_1Hz_div_0_0,clk_10MHz_1Hz_div,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_clk_10MHz_1Hz_div_0_0 : entity is "design_1_clk_10MHz_1Hz_div_0_0,clk_10MHz_1Hz_div,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=clk_10MHz_1Hz_div,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_clk_10MHz_1Hz_div_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_clk_10MHz_1Hz_div_0_0 : entity is "module_ref";
end design_1_clk_10MHz_1Hz_div_0_0;

architecture stub of design_1_clk_10MHz_1Hz_div_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_10MHz,Reset,clk_1Hz";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of Reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "clk_10MHz_1Hz_div,Vivado 2024.2";
begin
end;
