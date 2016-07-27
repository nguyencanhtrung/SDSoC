
################################################################
# This is a generated script based on design: zed
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source zed_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART em.avnet.com:zed:part0:1.0 [current_project]


# CHANGE DESIGN NAME HERE
set design_name zed

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports

  # Create instance: acp_axcache_0x3, and set properties
  set acp_axcache_0x3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 acp_axcache_0x3 ]
  set_property -dict [ list CONFIG.CONST_VAL {3} CONFIG.CONST_WIDTH {4}  ] $acp_axcache_0x3

  # Create instance: acp_axcache_0xF, and set properties
  set acp_axcache_0xF [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 acp_axcache_0xF ]
  set_property -dict [ list CONFIG.CONST_VAL {15} CONFIG.CONST_WIDTH {4}  ] $acp_axcache_0xF

  # Create instance: axi_interconnect_M_AXI_GP0, and set properties
  set axi_interconnect_M_AXI_GP0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_M_AXI_GP0 ]
  set_property -dict [ list CONFIG.M00_HAS_REGSLICE {1} CONFIG.M01_HAS_REGSLICE {1} CONFIG.NUM_MI {2} CONFIG.NUM_SI {1} CONFIG.S00_HAS_REGSLICE {1} CONFIG.STRATEGY {2}  ] $axi_interconnect_M_AXI_GP0

  # Create instance: axi_interconnect_S_AXI_ACP, and set properties
  set axi_interconnect_S_AXI_ACP [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_S_AXI_ACP ]
  set_property -dict [ list CONFIG.M00_HAS_DATA_FIFO {2} CONFIG.M00_HAS_REGSLICE {1} CONFIG.NUM_MI {1} CONFIG.NUM_SI {3} CONFIG.S00_HAS_DATA_FIFO {2} CONFIG.S00_HAS_REGSLICE {1} CONFIG.S01_HAS_DATA_FIFO {2} CONFIG.S01_HAS_REGSLICE {1} CONFIG.S02_HAS_DATA_FIFO {2} CONFIG.S02_HAS_REGSLICE {1} CONFIG.STRATEGY {2}  ] $axi_interconnect_S_AXI_ACP

  # Create instance: axis_rtr_datamover_0, and set properties
  set axis_rtr_datamover_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_stream_router:1.0 axis_rtr_datamover_0 ]
  set_property -dict [ list CONFIG.C_M_AXIS_RXD_TDATA_WIDTH {64} CONFIG.C_M_AXIS_TDATA_WIDTH {64} CONFIG.C_NUM_MASTER_SLOTS {2} CONFIG.C_NUM_SLAVE_SLOTS {1} CONFIG.C_S_AXIS_TDATA_WIDTH {64} CONFIG.C_S_AXIS_TXD_TDATA_WIDTH {64}  ] $axis_rtr_datamover_0

  # Create instance: datamover_0, and set properties
  set datamover_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 datamover_0 ]
  set_property -dict [ list CONFIG.c_dlytmr_resolution {1250} CONFIG.c_include_mm2s {1} CONFIG.c_include_mm2s_dre {1} CONFIG.c_include_mm2s_sf {1} CONFIG.c_include_s2mm {1} CONFIG.c_include_s2mm_dre {1} CONFIG.c_include_s2mm_sf {1} CONFIG.c_include_sg {1} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {64} CONFIG.c_mm2s_burst_size {64} CONFIG.c_s2mm_burst_size {64} CONFIG.c_s_axis_s2mm_tdata_width {64} CONFIG.c_sg_include_stscntrl_strm {1} CONFIG.c_sg_length_width {23} CONFIG.c_sg_use_stsapp_length {0}  ] $datamover_0

  # Create instance: mmult_accel_0, and set properties
  set mmult_accel_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:mmult_accel:1.0 mmult_accel_0 ]

  # Create instance: mmult_accel_0_if, and set properties
  set mmult_accel_0_if [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_accelerator_adapter:2.1 mmult_accel_0_if ]
  set_property -dict [ list CONFIG.C_AP_IARG_0_DIM_1 {1024} CONFIG.C_AP_IARG_0_DWIDTH {32} CONFIG.C_AP_IARG_0_TYPE {1} CONFIG.C_AP_IARG_0_WIDTH {32} CONFIG.C_AP_IARG_1_DIM_1 {1024} CONFIG.C_AP_IARG_1_DWIDTH {32} CONFIG.C_AP_IARG_1_TYPE {1} CONFIG.C_AP_IARG_1_WIDTH {32} CONFIG.C_AP_OARG_0_DIM_1 {1024} CONFIG.C_AP_OARG_0_DWIDTH {32} CONFIG.C_AP_OARG_0_TYPE {1} CONFIG.C_AP_OARG_0_WIDTH {32} CONFIG.C_M_AXIS_HAS_TKEEP {1} CONFIG.C_M_AXIS_HAS_TSTRB {1} CONFIG.C_M_AXIS_TDATA_WIDTH {64} CONFIG.C_N_INPUT_ARGS {2} CONFIG.C_N_OUTPUT_ARGS {1} CONFIG.C_S_AXIS_TDATA_WIDTH {64}  ] $mmult_accel_0_if

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_0

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_1

  # Create instance: proc_sys_reset_2, and set properties
  set proc_sys_reset_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_2 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_2

  # Create instance: proc_sys_reset_3, and set properties
  set proc_sys_reset_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_3 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_3

  # Create instance: ps7, and set properties
  set ps7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7 ]
  set_property -dict [ list CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {166.666672} CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {142.857132} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {100.000000} CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666667} CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_CLK0_FREQ {166666672} CONFIG.PCW_CLK1_FREQ {142857132} \
CONFIG.PCW_CLK2_FREQ {100000000} CONFIG.PCW_CLK3_FREQ {200000000} \
CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {1} \
CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} CONFIG.PCW_ENET0_RESET_ENABLE {0} \
CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_ENET_RESET_POLARITY {Active Low} CONFIG.PCW_EN_4K_TIMER {0} \
CONFIG.PCW_EN_CLK0_PORT {1} CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} CONFIG.PCW_EN_CLK3_PORT {1} \
CONFIG.PCW_EN_ENET0 {1} CONFIG.PCW_EN_RST0_PORT {1} \
CONFIG.PCW_EN_RST1_PORT {0} CONFIG.PCW_EN_RST2_PORT {0} \
CONFIG.PCW_EN_RST3_PORT {0} CONFIG.PCW_EN_SDIO0 {1} \
CONFIG.PCW_EN_UART1 {1} CONFIG.PCW_EN_USB0 {1} \
CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK_CLK0_BUF {true} CONFIG.PCW_FCLK_CLK1_BUF {true} \
CONFIG.PCW_FCLK_CLK2_BUF {true} CONFIG.PCW_FCLK_CLK3_BUF {true} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {166} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {142} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {100} CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA_FCLK0_ENABLE {1} CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK2_ENABLE {1} CONFIG.PCW_FPGA_FCLK3_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C_RESET_POLARITY {Active Low} CONFIG.PCW_IMPORT_BOARD_PRESET {ZedBoard} \
CONFIG.PCW_IRQ_F2P_INTR {1} CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_0_PULLUP {disabled} \
CONFIG.PCW_MIO_0_SLEW {slow} CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_10_PULLUP {disabled} CONFIG.PCW_MIO_10_SLEW {slow} \
CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_11_PULLUP {disabled} \
CONFIG.PCW_MIO_11_SLEW {slow} CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_12_PULLUP {disabled} CONFIG.PCW_MIO_12_SLEW {slow} \
CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_13_PULLUP {disabled} \
CONFIG.PCW_MIO_13_SLEW {slow} CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_14_PULLUP {disabled} CONFIG.PCW_MIO_14_SLEW {slow} \
CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_15_PULLUP {disabled} \
CONFIG.PCW_MIO_15_SLEW {slow} CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_16_PULLUP {disabled} CONFIG.PCW_MIO_16_SLEW {fast} \
CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_17_PULLUP {disabled} \
CONFIG.PCW_MIO_17_SLEW {fast} CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_18_PULLUP {disabled} CONFIG.PCW_MIO_18_SLEW {fast} \
CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_19_PULLUP {disabled} \
CONFIG.PCW_MIO_19_SLEW {fast} CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_1_PULLUP {disabled} CONFIG.PCW_MIO_1_SLEW {fast} \
CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_20_PULLUP {disabled} \
CONFIG.PCW_MIO_20_SLEW {fast} CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_21_PULLUP {disabled} CONFIG.PCW_MIO_21_SLEW {fast} \
CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_22_PULLUP {disabled} \
CONFIG.PCW_MIO_22_SLEW {fast} CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_23_PULLUP {disabled} CONFIG.PCW_MIO_23_SLEW {fast} \
CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_24_PULLUP {disabled} \
CONFIG.PCW_MIO_24_SLEW {fast} CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_25_PULLUP {disabled} CONFIG.PCW_MIO_25_SLEW {fast} \
CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_26_PULLUP {disabled} \
CONFIG.PCW_MIO_26_SLEW {fast} CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_27_PULLUP {disabled} CONFIG.PCW_MIO_27_SLEW {fast} \
CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_28_PULLUP {disabled} \
CONFIG.PCW_MIO_28_SLEW {fast} CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_29_PULLUP {disabled} CONFIG.PCW_MIO_29_SLEW {fast} \
CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_2_SLEW {fast} \
CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_30_PULLUP {disabled} \
CONFIG.PCW_MIO_30_SLEW {fast} CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_31_PULLUP {disabled} CONFIG.PCW_MIO_31_SLEW {fast} \
CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_32_PULLUP {disabled} \
CONFIG.PCW_MIO_32_SLEW {fast} CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_33_PULLUP {disabled} CONFIG.PCW_MIO_33_SLEW {fast} \
CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_34_PULLUP {disabled} \
CONFIG.PCW_MIO_34_SLEW {fast} CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_35_PULLUP {disabled} CONFIG.PCW_MIO_35_SLEW {fast} \
CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_36_PULLUP {disabled} \
CONFIG.PCW_MIO_36_SLEW {fast} CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_37_PULLUP {disabled} CONFIG.PCW_MIO_37_SLEW {fast} \
CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_38_PULLUP {disabled} \
CONFIG.PCW_MIO_38_SLEW {fast} CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_39_PULLUP {disabled} CONFIG.PCW_MIO_39_SLEW {fast} \
CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_3_SLEW {fast} \
CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_40_PULLUP {disabled} \
CONFIG.PCW_MIO_40_SLEW {fast} CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_41_PULLUP {disabled} CONFIG.PCW_MIO_41_SLEW {fast} \
CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_42_PULLUP {disabled} \
CONFIG.PCW_MIO_42_SLEW {fast} CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_43_PULLUP {disabled} CONFIG.PCW_MIO_43_SLEW {fast} \
CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_44_PULLUP {disabled} \
CONFIG.PCW_MIO_44_SLEW {fast} CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_45_PULLUP {disabled} CONFIG.PCW_MIO_45_SLEW {fast} \
CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_46_PULLUP {disabled} \
CONFIG.PCW_MIO_46_SLEW {slow} CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_47_PULLUP {disabled} CONFIG.PCW_MIO_47_SLEW {slow} \
CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_48_PULLUP {disabled} \
CONFIG.PCW_MIO_48_SLEW {slow} CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_49_PULLUP {disabled} CONFIG.PCW_MIO_49_SLEW {slow} \
CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_4_SLEW {fast} \
CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_50_PULLUP {disabled} \
CONFIG.PCW_MIO_50_SLEW {slow} CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_51_PULLUP {disabled} CONFIG.PCW_MIO_51_SLEW {slow} \
CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_52_PULLUP {disabled} \
CONFIG.PCW_MIO_52_SLEW {slow} CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_53_PULLUP {disabled} CONFIG.PCW_MIO_53_SLEW {slow} \
CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_5_SLEW {fast} \
CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_6_SLEW {fast} \
CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_7_SLEW {slow} \
CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_8_SLEW {fast} \
CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_9_PULLUP {disabled} \
CONFIG.PCW_MIO_9_SLEW {slow} CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#UART 1#UART 1#GPIO#GPIO#Enet 0#Enet 0} \
CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#gpio[1]#gpio[2]#gpio[3]#gpio[4]#gpio[5]#gpio[6]#gpio[7]#gpio[8]#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#wp#cd#tx#rx#gpio[50]#gpio[51]#mdc#mdio} CONFIG.PCW_NAND_CYCLES_T_AR {0} \
CONFIG.PCW_NAND_CYCLES_T_CLR {0} CONFIG.PCW_NAND_CYCLES_T_RC {2} \
CONFIG.PCW_NAND_CYCLES_T_REA {1} CONFIG.PCW_NAND_CYCLES_T_RR {0} \
CONFIG.PCW_NAND_CYCLES_T_WC {2} CONFIG.PCW_NAND_CYCLES_T_WP {1} \
CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} CONFIG.PCW_NOR_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_CS0_T_PC {1} CONFIG.PCW_NOR_CS0_T_RC {2} \
CONFIG.PCW_NOR_CS0_T_TR {1} CONFIG.PCW_NOR_CS0_T_WC {2} \
CONFIG.PCW_NOR_CS0_T_WP {1} CONFIG.PCW_NOR_CS0_WE_TIME {2} \
CONFIG.PCW_NOR_CS1_T_CEOE {1} CONFIG.PCW_NOR_CS1_T_PC {1} \
CONFIG.PCW_NOR_CS1_T_RC {2} CONFIG.PCW_NOR_CS1_T_TR {1} \
CONFIG.PCW_NOR_CS1_T_WC {2} CONFIG.PCW_NOR_CS1_T_WP {1} \
CONFIG.PCW_NOR_CS1_WE_TIME {2} CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_RC {2} CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_WC {2} CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {2} CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} CONFIG.PCW_NOR_SRAM_CS1_T_RC {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} CONFIG.PCW_NOR_SRAM_CS1_T_WC {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {2} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.010} CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.010} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.010} CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.013} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.001} CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.002} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.001} CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.008} \
CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {1} CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {ARM PLL} CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
CONFIG.PCW_SD0_GRP_POW_ENABLE {0} CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD0_GRP_WP_IO {MIO 46} CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART1_BAUD_RATE {115200} CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} CONFIG.PCW_UIPARAM_DDR_AL {0} \
CONFIG.PCW_UIPARAM_DDR_BL {8} CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.41} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.411} CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.341} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.358} CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {61.0905} CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {61.0905} CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {68.4725} CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {71.086} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {66.794} CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {108.7385} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.025} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.028} CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {-0.009} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {-0.061} CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {64.1705} CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {63.686} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {68.46} CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {105.4895} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333313} CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J128M16 HA-15E} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} CONFIG.PCW_USB0_RESET_ENABLE {0} \
CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB_RESET_POLARITY {Active Low} CONFIG.PCW_USE_CROSS_TRIGGER {0} \
CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {1} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_M_AXI_GP0 {1} CONFIG.PCW_USE_S_AXI_ACP {1} \
CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0}  ] $ps7

  # Create instance: xlconcat, and set properties
  set xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat ]
  set_property -dict [ list CONFIG.NUM_PORTS {2}  ] $xlconcat

  # Create interface connections
  connect_bd_intf_net -intf_net axi_interconnect_M_AXI_GP0_M00_AXI [get_bd_intf_pins axi_interconnect_M_AXI_GP0/M00_AXI] [get_bd_intf_pins mmult_accel_0_if/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_M_AXI_GP0_M01_AXI [get_bd_intf_pins axi_interconnect_M_AXI_GP0/M01_AXI] [get_bd_intf_pins datamover_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_S_AXI_ACP_M00_AXI [get_bd_intf_pins axi_interconnect_S_AXI_ACP/M00_AXI] [get_bd_intf_pins ps7/S_AXI_ACP]
  connect_bd_intf_net -intf_net axis_rtr_datamover_0_M_AXIS_0 [get_bd_intf_pins axis_rtr_datamover_0/M_AXIS_0] [get_bd_intf_pins mmult_accel_0_if/S_AXIS_0]
  connect_bd_intf_net -intf_net axis_rtr_datamover_0_M_AXIS_1 [get_bd_intf_pins axis_rtr_datamover_0/M_AXIS_1] [get_bd_intf_pins mmult_accel_0_if/S_AXIS_1]
  connect_bd_intf_net -intf_net axis_rtr_datamover_0_m_axis_rxd [get_bd_intf_pins axis_rtr_datamover_0/m_axis_rxd] [get_bd_intf_pins datamover_0/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net axis_rtr_datamover_0_m_axis_rxs [get_bd_intf_pins axis_rtr_datamover_0/m_axis_rxs] [get_bd_intf_pins datamover_0/S_AXIS_STS]
  connect_bd_intf_net -intf_net datamover_0_M_AXIS_CNTRL [get_bd_intf_pins axis_rtr_datamover_0/s_axis_txc] [get_bd_intf_pins datamover_0/M_AXIS_CNTRL]
  connect_bd_intf_net -intf_net datamover_0_M_AXIS_MM2S [get_bd_intf_pins axis_rtr_datamover_0/s_axis_txd] [get_bd_intf_pins datamover_0/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net datamover_0_M_AXI_MM2S [get_bd_intf_pins axi_interconnect_S_AXI_ACP/S01_AXI] [get_bd_intf_pins datamover_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net datamover_0_M_AXI_S2MM [get_bd_intf_pins axi_interconnect_S_AXI_ACP/S02_AXI] [get_bd_intf_pins datamover_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net datamover_0_M_AXI_SG [get_bd_intf_pins axi_interconnect_S_AXI_ACP/S00_AXI] [get_bd_intf_pins datamover_0/M_AXI_SG]
  connect_bd_intf_net -intf_net mmult_accel_0_if_AP_CTRL [get_bd_intf_pins mmult_accel_0/ap_ctrl] [get_bd_intf_pins mmult_accel_0_if/AP_CTRL]
  connect_bd_intf_net -intf_net mmult_accel_0_if_M_AXIS_0 [get_bd_intf_pins axis_rtr_datamover_0/S_AXIS_0] [get_bd_intf_pins mmult_accel_0_if/M_AXIS_0]
  connect_bd_intf_net -intf_net mmult_accel_0_in_A [get_bd_intf_pins mmult_accel_0/in_A] [get_bd_intf_pins mmult_accel_0_if/AP_FIFO_IARG_0]
  connect_bd_intf_net -intf_net mmult_accel_0_in_B [get_bd_intf_pins mmult_accel_0/in_B] [get_bd_intf_pins mmult_accel_0_if/AP_FIFO_IARG_1]
  connect_bd_intf_net -intf_net mmult_accel_0_out_C [get_bd_intf_pins mmult_accel_0/out_C] [get_bd_intf_pins mmult_accel_0_if/AP_FIFO_OARG_0]
  connect_bd_intf_net -intf_net ps7_M_AXI_GP0 [get_bd_intf_pins axi_interconnect_M_AXI_GP0/S00_AXI] [get_bd_intf_pins ps7/M_AXI_GP0]
  connect_bd_intf_net -intf_net ps7_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins ps7/DDR]
  connect_bd_intf_net -intf_net ps7_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins ps7/FIXED_IO]

  # Create port connections
  connect_bd_net -net acp_axcache_0x3_dout [get_bd_pins acp_axcache_0x3/dout] [get_bd_pins axi_interconnect_S_AXI_ACP/S00_AXI_arcache] [get_bd_pins axi_interconnect_S_AXI_ACP/S00_AXI_awcache]
  connect_bd_net -net acp_axcache_0xF_dout [get_bd_pins acp_axcache_0xF/dout] [get_bd_pins axi_interconnect_S_AXI_ACP/S01_AXI_arcache] [get_bd_pins axi_interconnect_S_AXI_ACP/S02_AXI_awcache]
  connect_bd_net -net clkid0 [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins ps7/FCLK_CLK0]
  connect_bd_net -net clkid1 [get_bd_pins axi_interconnect_M_AXI_GP0/ACLK] [get_bd_pins axi_interconnect_M_AXI_GP0/M00_ACLK] [get_bd_pins axi_interconnect_M_AXI_GP0/M01_ACLK] [get_bd_pins axi_interconnect_M_AXI_GP0/S00_ACLK] [get_bd_pins axi_interconnect_S_AXI_ACP/ACLK] [get_bd_pins axi_interconnect_S_AXI_ACP/M00_ACLK] [get_bd_pins axi_interconnect_S_AXI_ACP/S00_ACLK] [get_bd_pins axi_interconnect_S_AXI_ACP/S01_ACLK] [get_bd_pins axi_interconnect_S_AXI_ACP/S02_ACLK] [get_bd_pins axis_rtr_datamover_0/M_AXIS_0_ACLK] [get_bd_pins axis_rtr_datamover_0/M_AXIS_1_ACLK] [get_bd_pins axis_rtr_datamover_0/S_AXIS_0_ACLK] [get_bd_pins axis_rtr_datamover_0/m_axis_rxd_aclk] [get_bd_pins axis_rtr_datamover_0/m_axis_rxs_aclk] [get_bd_pins axis_rtr_datamover_0/s_axis_txc_aclk] [get_bd_pins axis_rtr_datamover_0/s_axis_txd_aclk] [get_bd_pins datamover_0/m_axi_mm2s_aclk] [get_bd_pins datamover_0/m_axi_s2mm_aclk] [get_bd_pins datamover_0/m_axi_sg_aclk] [get_bd_pins datamover_0/s_axi_lite_aclk] [get_bd_pins mmult_accel_0/ap_clk] [get_bd_pins mmult_accel_0_if/aclk] [get_bd_pins mmult_accel_0_if/m_axis_aclk] [get_bd_pins mmult_accel_0_if/s_axi_aclk] [get_bd_pins mmult_accel_0_if/s_axis_aclk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk] [get_bd_pins ps7/FCLK_CLK1] [get_bd_pins ps7/M_AXI_GP0_ACLK] [get_bd_pins ps7/S_AXI_ACP_ACLK]
  connect_bd_net -net clkid2 [get_bd_pins proc_sys_reset_2/slowest_sync_clk] [get_bd_pins ps7/FCLK_CLK2]
  connect_bd_net -net clkid3 [get_bd_pins proc_sys_reset_3/slowest_sync_clk] [get_bd_pins ps7/FCLK_CLK3]
  connect_bd_net -net datamover_0_mm2s_introut [get_bd_pins datamover_0/mm2s_introut] [get_bd_pins xlconcat/In0]
  connect_bd_net -net datamover_0_s2mm_introut [get_bd_pins datamover_0/s2mm_introut] [get_bd_pins xlconcat/In1]
  connect_bd_net -net mmult_accel_0_if_aresetn [get_bd_pins mmult_accel_0/ap_rst_n] [get_bd_pins mmult_accel_0_if/aresetn]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins axi_interconnect_M_AXI_GP0/ARESETN] [get_bd_pins axi_interconnect_M_AXI_GP0/M00_ARESETN] [get_bd_pins axi_interconnect_M_AXI_GP0/M01_ARESETN] [get_bd_pins axi_interconnect_M_AXI_GP0/S00_ARESETN] [get_bd_pins axi_interconnect_S_AXI_ACP/ARESETN] [get_bd_pins axi_interconnect_S_AXI_ACP/M00_ARESETN] [get_bd_pins axi_interconnect_S_AXI_ACP/S00_ARESETN] [get_bd_pins axi_interconnect_S_AXI_ACP/S01_ARESETN] [get_bd_pins axi_interconnect_S_AXI_ACP/S02_ARESETN] [get_bd_pins proc_sys_reset_1/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins axis_rtr_datamover_0/m_axis_rxd_aresetn] [get_bd_pins axis_rtr_datamover_0/m_axis_rxs_aresetn] [get_bd_pins axis_rtr_datamover_0/s_axis_txc_aresetn] [get_bd_pins axis_rtr_datamover_0/s_axis_txd_aresetn] [get_bd_pins datamover_0/axi_resetn] [get_bd_pins mmult_accel_0_if/m_axis_aresetn] [get_bd_pins mmult_accel_0_if/s_axi_aresetn] [get_bd_pins mmult_accel_0_if/s_axis_aresetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net ps7_fclk_reset0_n [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in] [get_bd_pins proc_sys_reset_2/ext_reset_in] [get_bd_pins proc_sys_reset_3/ext_reset_in] [get_bd_pins ps7/FCLK_RESET0_N]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins ps7/IRQ_F2P] [get_bd_pins xlconcat/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces datamover_0/Data_SG] [get_bd_addr_segs ps7/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_ps7_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces datamover_0/Data_MM2S] [get_bd_addr_segs ps7/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_ps7_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces datamover_0/Data_S2MM] [get_bd_addr_segs ps7/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_ps7_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x40400000 [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs datamover_0/S_AXI_LITE/Reg] SEG_datamover_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs mmult_accel_0_if/S_AXI/Reg] SEG_mmult_accel_0_if_Reg
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


