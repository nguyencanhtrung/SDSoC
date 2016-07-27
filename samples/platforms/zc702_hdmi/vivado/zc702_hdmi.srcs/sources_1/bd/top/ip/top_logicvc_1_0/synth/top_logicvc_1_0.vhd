-- (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xylon:logicbricks:logicvc:3.01.a
-- IP Revision: -1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY logicvc_v3_01_a;
USE logicvc_v3_01_a.logicvc;

ENTITY top_logicvc_1_0 IS
  PORT (
    rst : IN STD_LOGIC;
    vclk : IN STD_LOGIC;
    M_AXI_ACLK : IN STD_LOGIC;
    M_AXI_ARESETN : IN STD_LOGIC;
    M_AXI_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M_AXI_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXI_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_AWVALID : OUT STD_LOGIC;
    M_AXI_AWREADY : IN STD_LOGIC;
    M_AXI_WDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    M_AXI_WSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXI_WLAST : OUT STD_LOGIC;
    M_AXI_WVALID : OUT STD_LOGIC;
    M_AXI_WREADY : IN STD_LOGIC;
    M_AXI_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M_AXI_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_BVALID : IN STD_LOGIC;
    M_AXI_BREADY : OUT STD_LOGIC;
    M_AXI_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M_AXI_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXI_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_ARVALID : OUT STD_LOGIC;
    M_AXI_ARREADY : IN STD_LOGIC;
    M_AXI_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M_AXI_RDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    M_AXI_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_RLAST : IN STD_LOGIC;
    M_AXI_RVALID : IN STD_LOGIC;
    M_AXI_RREADY : OUT STD_LOGIC;
    S_AXI_ACLK : IN STD_LOGIC;
    S_AXI_ARESETN : IN STD_LOGIC;
    S_AXI_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_AWVALID : IN STD_LOGIC;
    S_AXI_AWREADY : OUT STD_LOGIC;
    S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_WVALID : IN STD_LOGIC;
    S_AXI_WREADY : OUT STD_LOGIC;
    S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID : OUT STD_LOGIC;
    S_AXI_BREADY : IN STD_LOGIC;
    S_AXI_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_ARVALID : IN STD_LOGIC;
    S_AXI_ARREADY : OUT STD_LOGIC;
    S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_RVALID : OUT STD_LOGIC;
    S_AXI_RREADY : IN STD_LOGIC;
    pix_clk_i : IN STD_LOGIC;
    pix_clk_o : OUT STD_LOGIC;
    pix_clk_t : OUT STD_LOGIC;
    pix_clk_n_i : IN STD_LOGIC;
    pix_clk_n_o : OUT STD_LOGIC;
    pix_clk_n_t : OUT STD_LOGIC;
    d_pix_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    d_pix_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    d_pix_t : OUT STD_LOGIC;
    hsync_i : IN STD_LOGIC;
    hsync_o : OUT STD_LOGIC;
    hsync_t : OUT STD_LOGIC;
    vsync_i : IN STD_LOGIC;
    vsync_o : OUT STD_LOGIC;
    vsync_t : OUT STD_LOGIC;
    blank_i : IN STD_LOGIC;
    blank_o : OUT STD_LOGIC;
    blank_t : OUT STD_LOGIC;
    e_curr_vbuff : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    e_next_vbuff : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    e_sw_vbuff : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    e_sw_grant : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    gpi : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    gpo : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    en_vdd : OUT STD_LOGIC;
    en_blight : OUT STD_LOGIC;
    v_en : OUT STD_LOGIC;
    en_vee : OUT STD_LOGIC;
    interrupt : OUT STD_LOGIC
  );
END top_logicvc_1_0;

ARCHITECTURE top_logicvc_1_0_arch OF top_logicvc_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_logicvc_1_0_arch: ARCHITECTURE IS "yes";

  COMPONENT logicvc IS
    GENERIC (
      C_IP_LICENSE_TYPE : INTEGER;
      C_IP_MAJOR_REVISION : INTEGER;
      C_IP_MINOR_REVISION : INTEGER;
      C_IP_PATCH_LEVEL : INTEGER;
      C_IP_LICENSE_CHECK : INTEGER;
      C_IP_TIME_BEFORE_BREAK : INTEGER;
      C_FAMILY : STRING;
      C_VMEM_INTERFACE : INTEGER;
      C_VMEM_BASEADDR : STD_LOGIC_VECTOR;
      C_VMEM_HIGHADDR : STD_LOGIC_VECTOR;
      C_MEM_BURST : INTEGER; -- For AXI4 and XMB interface available values are 16, 32 and 64. For 32-bit PLB interface bus only a burst of 16 words is possible, while for 64-bit and 128-bit PLB interface bus any of the available values can be selected.
      C_MEM_BYTE_SWAP : INTEGER; -- If set this will change byte ordering on memory interface bus (B0B1B2B3 => B3B2B1B0 for 32-bit memory interface data bus width, B0B1B2B3B4B5B6B7 => B7B6B5B4B3B2B1B0 for 64-bit memory interface data bus width).
      C_MEM_LITTLE_ENDIAN : INTEGER; -- Default endianness for logiCVC memory access is little when AXI4 or XMB is implemented, and big when PLB is implemented.
      C_INCREASE_FIFO : INTEGER; -- User can choose to increase the size of each layer FIFO at the expense of bigger BRAM utilization.
      C_MPLB_NUM_MASTERS : INTEGER; -- Number of masters on MPLB interface bus.
      C_MPLB_AWIDTH : INTEGER; -- MPLB interface address bus width.
      C_MPLB_DWIDTH : INTEGER; -- MPLB interface data bus width.
      C_MPLB_PRIORITY : INTEGER; -- Priority on MPLB interface bus: 0 - the lowest, 3 - the highest.
      C_MPLB_SMALLEST_SLAVE : INTEGER; -- Smallest slave on MPLB interface bus.
      C_XMB_DATA_BUS_WIDTH : INTEGER; -- XMB interface data bus width.
      C_M_AXI_THREAD_ID_WIDTH : INTEGER; -- AXI4 interface thread ID width.
      C_M_AXI_DATA_WIDTH : INTEGER; -- AXI4 interface data bus width.
      C_M_AXI_ADDR_WIDTH : INTEGER; -- AXI4 interface address bus width.
      C_REGS_INTERFACE : INTEGER;
      C_READABLE_REGS : INTEGER; -- To save additional resources user can disable the read register interface. In this mode only interrupt status register, double/triple video/CLUT buffer registers, power control register and IP version register are readable.
      C_REG_BYTE_SWAP : INTEGER; -- If set this will change byte ordering on register interface bus (B0B1B2B3 => B3B2B1B0).
      C_REGS_BASEADDR : STD_LOGIC_VECTOR; -- Registers base address - used only if OPB or SPLB bus interface is implemented.
      C_REGS_HIGHADDR : STD_LOGIC_VECTOR; -- Registers high address - used only if OPB or SPLB bus interface is implemented.
      C_OPB_AWIDTH : INTEGER; -- OPB interface address bus width.
      C_OPB_DWIDTH : INTEGER; -- OPB interface data bus width.
      C_SPLB_NUM_MASTERS : INTEGER; -- Number of masters on SPLB interface bus.
      C_SPLB_MID_WIDTH : INTEGER; -- PLB master ID bus width, the value is log2(C_SPLB_NUM_MASTERS).
      C_SPLB_AWIDTH : INTEGER; -- SPLB interface address bus width.
      C_SPLB_DWIDTH : INTEGER; -- SPLB interface data bus width.
      C_SPLB_NATIVE_DWIDTH : INTEGER; -- SPLB interface native data bus width.
      C_S_AXI_ADDR_WIDTH : INTEGER; -- AXI4-Lite interface address bus width.
      C_S_AXI_DATA_WIDTH : INTEGER; -- AXI4-Lite interface data bus width.
      C_PIXEL_DATA_WIDTH : INTEGER; -- Parallel pixel data width towards the display - bits per pixel (bpp).
      C_USE_VCLK2 : INTEGER; -- Pixel clock rising edge is set in the middle of the DDR RGB data eye, or if not used, synchronous.
      C_ROW_STRIDE : INTEGER; -- Distance between same column pixels for adjacent rows in pixels.
      C_XCOLOR : INTEGER; -- Enable XCOLOR functionality - pixel dithering.
      C_USE_SIZE_POSITION : INTEGER; -- Enable functionality of configurable layer size, position and offset.
      C_DISPLAY_INTERFACE : INTEGER; -- Enable different output types. Parallel output is always active.
      C_DISPLAY_COLOR_SPACE : INTEGER; -- Select output color space and format.
      C_LVDS_DATA_WIDTH : INTEGER; -- Data width of the LVDS display interface type.
      C_VCLK_PERIOD : INTEGER; -- VCLK period in ps when DVI display interface type is implemented.
      C_NUM_OF_LAYERS : POSITIVE; -- Number of logiCVC layers to be instantiated.
      C_LAYER_0_TYPE : INTEGER; -- Select between RGB or YCbCr layer.
      C_LAYER_1_TYPE : INTEGER; -- Select between RGB, YCbCr or alpha layer.
      C_LAYER_2_TYPE : INTEGER; -- Select between RGB or YCbCr layer.
      C_LAYER_3_TYPE : INTEGER; -- Select between RGB, YCbCr or alpha layer.
      C_LAYER_4_TYPE : INTEGER; -- Select between RGB or YCbCr layer.
      C_LAYER_0_DATA_WIDTH : POSITIVE; -- Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.
      C_LAYER_1_DATA_WIDTH : POSITIVE; -- Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.
      C_LAYER_2_DATA_WIDTH : POSITIVE; -- Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.
      C_LAYER_3_DATA_WIDTH : POSITIVE; -- Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.
      C_LAYER_4_DATA_WIDTH : POSITIVE; -- Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.
      C_LAYER_0_ALPHA_MODE : INTEGER; -- Select between layer alpha, pixel alpha or CLUT alpha blending mode.
      C_LAYER_1_ALPHA_MODE : INTEGER; -- Select between layer alpha, pixel alpha or CLUT alpha blending mode.
      C_LAYER_2_ALPHA_MODE : INTEGER; -- Select between layer alpha, pixel alpha or CLUT alpha blending mode.
      C_LAYER_3_ALPHA_MODE : INTEGER; -- Select between layer alpha, pixel alpha or CLUT alpha blending mode.
      C_LAYER_4_ALPHA_MODE : INTEGER; -- Select between layer alpha, pixel alpha or CLUT alpha blending mode.
      C_USE_BACKGROUND : INTEGER; -- In case the last layer is configured as background, pixel value is read from logiCVC background color register and not from video memory buffer.
      C_USE_XTREME_DSP : INTEGER; -- Enable or disable the use of DSP resources for blender.
      C_USE_MULTIPLIER : INTEGER; -- Control the way in which multipliers in blender are implemented: 0 - LUT, 1 - block, 2 - auto.
      C_LAYER_0_OFFSET : INTEGER; -- Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.
      C_LAYER_1_OFFSET : INTEGER; -- Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.
      C_LAYER_2_OFFSET : INTEGER; -- Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.
      C_LAYER_3_OFFSET : INTEGER; -- Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.
      C_LAYER_4_OFFSET : INTEGER; -- Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.
      C_BUFFER_0_OFFSET : INTEGER; -- Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.
      C_BUFFER_1_OFFSET : INTEGER; -- Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.
      C_BUFFER_2_OFFSET : INTEGER; -- Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.
      C_BUFFER_3_OFFSET : INTEGER; -- Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.
      C_BUFFER_4_OFFSET : INTEGER; -- Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.
      C_USE_E_PARALLEL_INPUT : INTEGER; -- Syncronize logiCVC to external parallel input and use data as one of the layers.
      C_USE_E_VCLK_BUFGMUX : INTEGER; -- Use BUFGMUX for switching clock for external parallel input synchronization.
      C_E_LAYER : INTEGER; -- Which layer should be used as external parallel stream.
      C_E_DATA_WIDTH : INTEGER; -- External parallel input data width.
      C_DVI_CLK_MODE : INTEGER -- Valid only for 7-series FPGA devices. Please consult the logiCVC-ML user's manual for more information on selecting the appropriate mode.
    );
    PORT (
      rst : IN STD_LOGIC;
      mclk : IN STD_LOGIC;
      vclk : IN STD_LOGIC;
      vclk2 : IN STD_LOGIC;
      itu_clk_in : IN STD_LOGIC;
      lvds_clk : IN STD_LOGIC;
      lvds_clkn : IN STD_LOGIC;
      mem_req : OUT STD_LOGIC;
      mem_wr : OUT STD_LOGIC;
      mem_ack : IN STD_LOGIC;
      mem_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      mem_data : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      mem_data_be : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      mem_wrack : IN STD_LOGIC;
      mem_burst : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      mem_data_valid : IN STD_LOGIC;
      mem_data_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      mplb_clk : IN STD_LOGIC;
      mplb_rst : IN STD_LOGIC;
      plb_maddrack : IN STD_LOGIC;
      plb_mrearbitrate : IN STD_LOGIC;
      plb_mssize : IN STD_LOGIC_VECTOR(0 TO 1);
      plb_mbusy : IN STD_LOGIC;
      plb_mrderr : IN STD_LOGIC;
      plb_mwrerr : IN STD_LOGIC;
      plb_mtimeout : IN STD_LOGIC;
      plb_mirq : IN STD_LOGIC;
      m_request : OUT STD_LOGIC;
      m_priority : OUT STD_LOGIC_VECTOR(0 TO 1);
      m_buslock : OUT STD_LOGIC;
      m_rnw : OUT STD_LOGIC;
      m_be : OUT STD_LOGIC_VECTOR(0 TO 7);
      m_size : OUT STD_LOGIC_VECTOR(0 TO 3);
      m_type : OUT STD_LOGIC_VECTOR(0 TO 2);
      m_msize : OUT STD_LOGIC_VECTOR(0 TO 1);
      m_tattribute : OUT STD_LOGIC_VECTOR(0 TO 15);
      m_lockerr : OUT STD_LOGIC;
      m_abort : OUT STD_LOGIC;
      m_abus : OUT STD_LOGIC_VECTOR(0 TO 31);
      m_uabus : OUT STD_LOGIC_VECTOR(0 TO 31);
      plb_mwrdack : IN STD_LOGIC;
      plb_mwrbterm : IN STD_LOGIC;
      m_wrburst : OUT STD_LOGIC;
      m_wrdbus : OUT STD_LOGIC_VECTOR(0 TO 63);
      plb_mrddack : IN STD_LOGIC;
      plb_mrdbterm : IN STD_LOGIC;
      plb_mrdwdaddr : IN STD_LOGIC_VECTOR(0 TO 3);
      plb_mrddbus : IN STD_LOGIC_VECTOR(0 TO 63);
      m_rdburst : OUT STD_LOGIC;
      M_AXI_ACLK : IN STD_LOGIC;
      M_AXI_ARESETN : IN STD_LOGIC;
      M_AXI_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXI_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M_AXI_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXI_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_AWVALID : OUT STD_LOGIC;
      M_AXI_AWREADY : IN STD_LOGIC;
      M_AXI_WDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXI_WSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXI_WLAST : OUT STD_LOGIC;
      M_AXI_WVALID : OUT STD_LOGIC;
      M_AXI_WREADY : IN STD_LOGIC;
      M_AXI_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXI_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_BVALID : IN STD_LOGIC;
      M_AXI_BREADY : OUT STD_LOGIC;
      M_AXI_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXI_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M_AXI_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXI_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_ARVALID : OUT STD_LOGIC;
      M_AXI_ARREADY : IN STD_LOGIC;
      M_AXI_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXI_RDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXI_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_RLAST : IN STD_LOGIC;
      M_AXI_RVALID : IN STD_LOGIC;
      M_AXI_RREADY : OUT STD_LOGIC;
      OPB_Clk : IN STD_LOGIC;
      OPB_Rst : IN STD_LOGIC;
      OPB_ABus : IN STD_LOGIC_VECTOR(0 TO 31);
      OPB_BE : IN STD_LOGIC_VECTOR(0 TO 3);
      OPB_RNW : IN STD_LOGIC;
      OPB_select : IN STD_LOGIC;
      OPB_seqAddr : IN STD_LOGIC;
      OPB_DBus : IN STD_LOGIC_VECTOR(0 TO 31);
      Sl_DBus : OUT STD_LOGIC_VECTOR(0 TO 31);
      Sl_errAck : OUT STD_LOGIC;
      Sl_retry : OUT STD_LOGIC;
      Sl_toutSup : OUT STD_LOGIC;
      Sl_xferAck : OUT STD_LOGIC;
      SPLB_Clk : IN STD_LOGIC;
      SPLB_Rst : IN STD_LOGIC;
      PLB_ABus : IN STD_LOGIC_VECTOR(0 TO 31);
      PLB_UABus : IN STD_LOGIC_VECTOR(0 TO 31);
      PLB_PAValid : IN STD_LOGIC;
      PLB_SAValid : IN STD_LOGIC;
      PLB_rdPrim : IN STD_LOGIC;
      PLB_wrPrim : IN STD_LOGIC;
      PLB_masterID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      PLB_abort : IN STD_LOGIC;
      PLB_busLock : IN STD_LOGIC;
      PLB_RNW : IN STD_LOGIC;
      PLB_BE : IN STD_LOGIC_VECTOR(0 TO 3);
      PLB_MSize : IN STD_LOGIC_VECTOR(0 TO 1);
      PLB_size : IN STD_LOGIC_VECTOR(0 TO 3);
      PLB_type : IN STD_LOGIC_VECTOR(0 TO 2);
      PLB_tattribute : IN STD_LOGIC_VECTOR(0 TO 15);
      PLB_lockErr : IN STD_LOGIC;
      PLB_wrDBus : IN STD_LOGIC_VECTOR(0 TO 31);
      PLB_wrBurst : IN STD_LOGIC;
      PLB_rdBurst : IN STD_LOGIC;
      PLB_rdPendReq : IN STD_LOGIC;
      PLB_wrPendReq : IN STD_LOGIC;
      PLB_rdPendPri : IN STD_LOGIC_VECTOR(0 TO 1);
      PLB_wrPendPri : IN STD_LOGIC_VECTOR(0 TO 1);
      PLB_reqPri : IN STD_LOGIC_VECTOR(0 TO 1);
      Sl_addrAck : OUT STD_LOGIC;
      Sl_SSize : OUT STD_LOGIC_VECTOR(0 TO 1);
      Sl_wait : OUT STD_LOGIC;
      Sl_rearbitrate : OUT STD_LOGIC;
      Sl_wrDAck : OUT STD_LOGIC;
      Sl_wrComp : OUT STD_LOGIC;
      Sl_wrBTerm : OUT STD_LOGIC;
      Sl_rdDBus : OUT STD_LOGIC_VECTOR(0 TO 31);
      Sl_rdWdAddr : OUT STD_LOGIC_VECTOR(0 TO 3);
      Sl_rdDAck : OUT STD_LOGIC;
      Sl_rdComp : OUT STD_LOGIC;
      Sl_rdBTerm : OUT STD_LOGIC;
      Sl_MBusy : OUT STD_LOGIC_VECTOR(0 TO 1);
      Sl_MRdErr : OUT STD_LOGIC_VECTOR(0 TO 1);
      Sl_MWrErr : OUT STD_LOGIC_VECTOR(0 TO 1);
      Sl_MIRQ : OUT STD_LOGIC_VECTOR(0 TO 1);
      S_AXI_ACLK : IN STD_LOGIC;
      S_AXI_ARESETN : IN STD_LOGIC;
      S_AXI_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_AWVALID : IN STD_LOGIC;
      S_AXI_AWREADY : OUT STD_LOGIC;
      S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXI_WVALID : IN STD_LOGIC;
      S_AXI_WREADY : OUT STD_LOGIC;
      S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_BVALID : OUT STD_LOGIC;
      S_AXI_BREADY : IN STD_LOGIC;
      S_AXI_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_ARVALID : IN STD_LOGIC;
      S_AXI_ARREADY : OUT STD_LOGIC;
      S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_RVALID : OUT STD_LOGIC;
      S_AXI_RREADY : IN STD_LOGIC;
      pix_clk_i : IN STD_LOGIC;
      pix_clk_o : OUT STD_LOGIC;
      pix_clk_t : OUT STD_LOGIC;
      pix_clk_n_i : IN STD_LOGIC;
      pix_clk_n_o : OUT STD_LOGIC;
      pix_clk_n_t : OUT STD_LOGIC;
      d_pix_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      d_pix_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      d_pix_t : OUT STD_LOGIC;
      hsync_i : IN STD_LOGIC;
      hsync_o : OUT STD_LOGIC;
      hsync_t : OUT STD_LOGIC;
      vsync_i : IN STD_LOGIC;
      vsync_o : OUT STD_LOGIC;
      vsync_t : OUT STD_LOGIC;
      blank_i : IN STD_LOGIC;
      blank_o : OUT STD_LOGIC;
      blank_t : OUT STD_LOGIC;
      itu656_clk_o : OUT STD_LOGIC;
      itu656_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      lvds_data_out_p : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      lvds_data_out_n : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      lvds_clk_out_p : OUT STD_LOGIC;
      lvds_clk_out_n : OUT STD_LOGIC;
      pllvclk_locked : IN STD_LOGIC;
      dvi_clk_p : OUT STD_LOGIC;
      dvi_clk_n : OUT STD_LOGIC;
      dvi_data_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      dvi_data_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      e_vclk : IN STD_LOGIC;
      e_vsync : IN STD_LOGIC;
      e_hsync : IN STD_LOGIC;
      e_blank : IN STD_LOGIC;
      e_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      e_video_present : IN STD_LOGIC;
      e_curr_vbuff : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      e_next_vbuff : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      e_sw_vbuff : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      e_sw_grant : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      gpi : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      gpo : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      en_vdd : OUT STD_LOGIC;
      en_blight : OUT STD_LOGIC;
      v_en : OUT STD_LOGIC;
      en_vee : OUT STD_LOGIC;
      interrupt : OUT STD_LOGIC
    );
  END COMPONENT logicvc;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF top_logicvc_1_0_arch: ARCHITECTURE IS "logicvc,Vivado 2014.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF top_logicvc_1_0_arch : ARCHITECTURE IS "top_logicvc_1_0,logicvc,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 m_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 m_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_BID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi BID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 s_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 s_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
BEGIN
  U0 : logicvc
    GENERIC MAP (
      C_IP_LICENSE_TYPE => 1,
      C_IP_MAJOR_REVISION => 3,
      C_IP_MINOR_REVISION => 1,
      C_IP_PATCH_LEVEL => 0,
      C_IP_LICENSE_CHECK => 0,
      C_IP_TIME_BEFORE_BREAK => 1,
      C_FAMILY => "zynq",
      C_VMEM_INTERFACE => 2,
      C_VMEM_BASEADDR => X"30000000",
      C_VMEM_HIGHADDR => X"37ffffff",
      C_MEM_BURST => 4,
      C_MEM_BYTE_SWAP => 0,
      C_MEM_LITTLE_ENDIAN => 1,
      C_INCREASE_FIFO => 2,
      C_MPLB_NUM_MASTERS => 8,
      C_MPLB_AWIDTH => 32,
      C_MPLB_DWIDTH => 64,
      C_MPLB_PRIORITY => 3,
      C_MPLB_SMALLEST_SLAVE => 32,
      C_XMB_DATA_BUS_WIDTH => 64,
      C_M_AXI_THREAD_ID_WIDTH => 1,
      C_M_AXI_DATA_WIDTH => 64,
      C_M_AXI_ADDR_WIDTH => 32,
      C_REGS_INTERFACE => 2,
      C_READABLE_REGS => 1,
      C_REG_BYTE_SWAP => 0,
      C_REGS_BASEADDR => X"40030000",
      C_REGS_HIGHADDR => X"4003FFFF",
      C_OPB_AWIDTH => 32,
      C_OPB_DWIDTH => 32,
      C_SPLB_NUM_MASTERS => 2,
      C_SPLB_MID_WIDTH => 1,
      C_SPLB_AWIDTH => 32,
      C_SPLB_DWIDTH => 32,
      C_SPLB_NATIVE_DWIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_DATA_WIDTH => 32,
      C_PIXEL_DATA_WIDTH => 16,
      C_USE_VCLK2 => 1,
      C_ROW_STRIDE => 2048,
      C_XCOLOR => 0,
      C_USE_SIZE_POSITION => 1,
      C_DISPLAY_INTERFACE => 0,
      C_DISPLAY_COLOR_SPACE => 1,
      C_LVDS_DATA_WIDTH => 4,
      C_VCLK_PERIOD => 25000,
      C_NUM_OF_LAYERS => 3,
      C_LAYER_0_TYPE => 0,
      C_LAYER_1_TYPE => 0,
      C_LAYER_2_TYPE => 0,
      C_LAYER_3_TYPE => 0,
      C_LAYER_4_TYPE => 0,
      C_LAYER_0_DATA_WIDTH => 16,
      C_LAYER_1_DATA_WIDTH => 24,
      C_LAYER_2_DATA_WIDTH => 24,
      C_LAYER_3_DATA_WIDTH => 16,
      C_LAYER_4_DATA_WIDTH => 16,
      C_LAYER_0_ALPHA_MODE => 0,
      C_LAYER_1_ALPHA_MODE => 0,
      C_LAYER_2_ALPHA_MODE => 0,
      C_LAYER_3_ALPHA_MODE => 0,
      C_LAYER_4_ALPHA_MODE => 0,
      C_USE_BACKGROUND => 1,
      C_USE_XTREME_DSP => 1,
      C_USE_MULTIPLIER => 2,
      C_LAYER_0_OFFSET => 0,
      C_LAYER_1_OFFSET => 1620,
      C_LAYER_2_OFFSET => 4096,
      C_LAYER_3_OFFSET => 6144,
      C_LAYER_4_OFFSET => 8192,
      C_BUFFER_0_OFFSET => 1080,
      C_BUFFER_1_OFFSET => 1080,
      C_BUFFER_2_OFFSET => 1024,
      C_BUFFER_3_OFFSET => 1024,
      C_BUFFER_4_OFFSET => 1024,
      C_USE_E_PARALLEL_INPUT => 0,
      C_USE_E_VCLK_BUFGMUX => 0,
      C_E_LAYER => 0,
      C_E_DATA_WIDTH => 24,
      C_DVI_CLK_MODE => 0
    )
    PORT MAP (
      rst => rst,
      mclk => '0',
      vclk => vclk,
      vclk2 => '0',
      itu_clk_in => '0',
      lvds_clk => '0',
      lvds_clkn => '0',
      mem_ack => '0',
      mem_wrack => '0',
      mem_data_valid => '0',
      mem_data_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      mplb_clk => '0',
      mplb_rst => '0',
      plb_maddrack => '0',
      plb_mrearbitrate => '0',
      plb_mssize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      plb_mbusy => '0',
      plb_mrderr => '0',
      plb_mwrerr => '0',
      plb_mtimeout => '0',
      plb_mirq => '0',
      plb_mwrdack => '0',
      plb_mwrbterm => '0',
      plb_mrddack => '0',
      plb_mrdbterm => '0',
      plb_mrdwdaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      plb_mrddbus => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      M_AXI_ACLK => M_AXI_ACLK,
      M_AXI_ARESETN => M_AXI_ARESETN,
      M_AXI_AWID => M_AXI_AWID,
      M_AXI_AWADDR => M_AXI_AWADDR,
      M_AXI_AWLEN => M_AXI_AWLEN,
      M_AXI_AWSIZE => M_AXI_AWSIZE,
      M_AXI_AWBURST => M_AXI_AWBURST,
      M_AXI_AWLOCK => M_AXI_AWLOCK,
      M_AXI_AWCACHE => M_AXI_AWCACHE,
      M_AXI_AWPROT => M_AXI_AWPROT,
      M_AXI_AWQOS => M_AXI_AWQOS,
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_WDATA => M_AXI_WDATA,
      M_AXI_WSTRB => M_AXI_WSTRB,
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WVALID => M_AXI_WVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_BID => M_AXI_BID,
      M_AXI_BRESP => M_AXI_BRESP,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_ARID => M_AXI_ARID,
      M_AXI_ARADDR => M_AXI_ARADDR,
      M_AXI_ARLEN => M_AXI_ARLEN,
      M_AXI_ARSIZE => M_AXI_ARSIZE,
      M_AXI_ARBURST => M_AXI_ARBURST,
      M_AXI_ARLOCK => M_AXI_ARLOCK,
      M_AXI_ARCACHE => M_AXI_ARCACHE,
      M_AXI_ARPROT => M_AXI_ARPROT,
      M_AXI_ARQOS => M_AXI_ARQOS,
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_RID => M_AXI_RID,
      M_AXI_RDATA => M_AXI_RDATA,
      M_AXI_RRESP => M_AXI_RRESP,
      M_AXI_RLAST => M_AXI_RLAST,
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_RREADY => M_AXI_RREADY,
      OPB_Clk => '0',
      OPB_Rst => '0',
      OPB_ABus => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      OPB_BE => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      OPB_RNW => '0',
      OPB_select => '0',
      OPB_seqAddr => '0',
      OPB_DBus => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      SPLB_Clk => '0',
      SPLB_Rst => '0',
      PLB_ABus => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      PLB_UABus => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      PLB_PAValid => '0',
      PLB_SAValid => '0',
      PLB_rdPrim => '0',
      PLB_wrPrim => '0',
      PLB_masterID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      PLB_abort => '0',
      PLB_busLock => '0',
      PLB_RNW => '0',
      PLB_BE => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      PLB_MSize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      PLB_size => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      PLB_type => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      PLB_tattribute => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      PLB_lockErr => '0',
      PLB_wrDBus => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      PLB_wrBurst => '0',
      PLB_rdBurst => '0',
      PLB_rdPendReq => '0',
      PLB_wrPendReq => '0',
      PLB_rdPendPri => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      PLB_wrPendPri => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      PLB_reqPri => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      pix_clk_i => pix_clk_i,
      pix_clk_o => pix_clk_o,
      pix_clk_t => pix_clk_t,
      pix_clk_n_i => pix_clk_n_i,
      pix_clk_n_o => pix_clk_n_o,
      pix_clk_n_t => pix_clk_n_t,
      d_pix_i => d_pix_i,
      d_pix_o => d_pix_o,
      d_pix_t => d_pix_t,
      hsync_i => hsync_i,
      hsync_o => hsync_o,
      hsync_t => hsync_t,
      vsync_i => vsync_i,
      vsync_o => vsync_o,
      vsync_t => vsync_t,
      blank_i => blank_i,
      blank_o => blank_o,
      blank_t => blank_t,
      pllvclk_locked => '0',
      e_vclk => '0',
      e_vsync => '0',
      e_hsync => '0',
      e_blank => '0',
      e_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 24)),
      e_video_present => '0',
      e_curr_vbuff => e_curr_vbuff,
      e_next_vbuff => e_next_vbuff,
      e_sw_vbuff => e_sw_vbuff,
      e_sw_grant => e_sw_grant,
      gpi => gpi,
      gpo => gpo,
      en_vdd => en_vdd,
      en_blight => en_blight,
      v_en => v_en,
      en_vee => en_vee,
      interrupt => interrupt
    );
END top_logicvc_1_0_arch;
