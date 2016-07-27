
################################################################
# This is a generated script based on design: zc702
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

# pf_axis start
create_project -force pf_axis vivado -part xc7z020clg484-1
set_property BOARD_PART xilinx.com:zc702:part0:0.9 [current_project]

set_property ip_repo_paths {repo} [current_fileset]
set_param ips.overrideSupersededIPLock true
set_param bd.skipSupportedIPCheck true
update_ip_catalog -rebuild
# pf_axis end

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source zc702_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART xilinx.com:zc702:part0:0.9 [current_project]


# CHANGE DESIGN NAME HERE
# pf_axis start
set design_name pf_axis
# pf_axis end

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

  # Create instance: axis2io_0, and set properties
  set axis2io_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:axis2io:1.0 axis2io_0 ]

  # Create instance: io2axis_0, and set properties
  set io2axis_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:io2axis:1.0 io2axis_0 ]

  # Create instance: proc_sys_reset_2, and set properties
  set proc_sys_reset_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_2 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0}  ] $proc_sys_reset_2

  # Create instance: ps7, and set properties
  set ps7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7 ]
  set_property -dict [ list CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {23.809523} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {166.666672} CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {142.857132} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {100.000000} CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {190.476196} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} CONFIG.PCW_CAN0_CAN0_IO {MIO 46 .. 47} \
CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {1} CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {23.8095} CONFIG.PCW_CAN_PERIPHERAL_VALID {1} \
CONFIG.PCW_CLK0_FREQ {166666672} CONFIG.PCW_CLK1_FREQ {142857132} \
CONFIG.PCW_CLK2_FREQ {100000000} CONFIG.PCW_CLK3_FREQ {200000000} \
CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {1} \
CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} CONFIG.PCW_ENET0_ENET0_IO {<Select>} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {0} CONFIG.PCW_ENET0_GRP_MDIO_IO {<Select>} \
CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} CONFIG.PCW_ENET0_RESET_ENABLE {1} \
CONFIG.PCW_ENET0_RESET_IO {MIO 11} CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
CONFIG.PCW_EN_4K_TIMER {0} CONFIG.PCW_EN_CAN0 {1} \
CONFIG.PCW_EN_CLK0_PORT {0} CONFIG.PCW_EN_CLK1_PORT {0} \
CONFIG.PCW_EN_CLK2_PORT {1} CONFIG.PCW_EN_CLK3_PORT {0} \
CONFIG.PCW_EN_ENET0 {0} CONFIG.PCW_EN_GPIO {1} \
CONFIG.PCW_EN_I2C0 {1} CONFIG.PCW_EN_QSPI {1} \
CONFIG.PCW_EN_RST0_PORT {1} CONFIG.PCW_EN_RST1_PORT {0} \
CONFIG.PCW_EN_RST2_PORT {0} CONFIG.PCW_EN_RST3_PORT {0} \
CONFIG.PCW_EN_SDIO0 {1} CONFIG.PCW_EN_UART1 {1} \
CONFIG.PCW_EN_USB0 {0} CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_FCLK_CLK1_BUF {false} \
CONFIG.PCW_FCLK_CLK2_BUF {true} CONFIG.PCW_FCLK_CLK3_BUF {false} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {166} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {142} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {100} CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA_FCLK1_ENABLE {0} CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK3_ENABLE {0} CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C0_RESET_ENABLE {1} CONFIG.PCW_I2C0_RESET_IO {MIO 13} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_I2C_RESET_POLARITY {Active Low} CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_IRQ_F2P_MODE {DIRECT} CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_0_PULLUP {enabled} CONFIG.PCW_MIO_0_SLEW {fast} \
CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_10_PULLUP {enabled} \
CONFIG.PCW_MIO_10_SLEW {slow} CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_11_PULLUP {enabled} CONFIG.PCW_MIO_11_SLEW {slow} \
CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_12_PULLUP {enabled} \
CONFIG.PCW_MIO_12_SLEW {slow} CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_13_PULLUP {enabled} CONFIG.PCW_MIO_13_SLEW {slow} \
CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_14_PULLUP {enabled} \
CONFIG.PCW_MIO_14_SLEW {slow} CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_15_PULLUP {enabled} CONFIG.PCW_MIO_15_SLEW {fast} \
CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_16_PULLUP {enabled} \
CONFIG.PCW_MIO_16_SLEW {fast} CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_17_PULLUP {enabled} CONFIG.PCW_MIO_17_SLEW {fast} \
CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_18_PULLUP {enabled} \
CONFIG.PCW_MIO_18_SLEW {fast} CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_19_PULLUP {enabled} CONFIG.PCW_MIO_19_SLEW {fast} \
CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_1_PULLUP {enabled} \
CONFIG.PCW_MIO_1_SLEW {fast} CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_20_PULLUP {enabled} CONFIG.PCW_MIO_20_SLEW {fast} \
CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_21_PULLUP {enabled} \
CONFIG.PCW_MIO_21_SLEW {fast} CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_22_PULLUP {enabled} CONFIG.PCW_MIO_22_SLEW {fast} \
CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_23_PULLUP {enabled} \
CONFIG.PCW_MIO_23_SLEW {fast} CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_24_PULLUP {enabled} CONFIG.PCW_MIO_24_SLEW {fast} \
CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_25_PULLUP {enabled} \
CONFIG.PCW_MIO_25_SLEW {fast} CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_26_PULLUP {enabled} CONFIG.PCW_MIO_26_SLEW {fast} \
CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_27_PULLUP {enabled} \
CONFIG.PCW_MIO_27_SLEW {fast} CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_28_PULLUP {enabled} CONFIG.PCW_MIO_28_SLEW {fast} \
CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_29_PULLUP {enabled} \
CONFIG.PCW_MIO_29_SLEW {fast} CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_2_SLEW {fast} CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_30_PULLUP {enabled} CONFIG.PCW_MIO_30_SLEW {fast} \
CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_31_PULLUP {enabled} \
CONFIG.PCW_MIO_31_SLEW {fast} CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_32_PULLUP {enabled} CONFIG.PCW_MIO_32_SLEW {fast} \
CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_33_PULLUP {enabled} \
CONFIG.PCW_MIO_33_SLEW {fast} CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_34_PULLUP {enabled} CONFIG.PCW_MIO_34_SLEW {fast} \
CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_35_PULLUP {enabled} \
CONFIG.PCW_MIO_35_SLEW {fast} CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_36_PULLUP {enabled} CONFIG.PCW_MIO_36_SLEW {fast} \
CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_37_PULLUP {enabled} \
CONFIG.PCW_MIO_37_SLEW {fast} CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_38_PULLUP {enabled} CONFIG.PCW_MIO_38_SLEW {fast} \
CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_39_PULLUP {enabled} \
CONFIG.PCW_MIO_39_SLEW {fast} CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_3_SLEW {fast} CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_40_PULLUP {enabled} CONFIG.PCW_MIO_40_SLEW {fast} \
CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_41_PULLUP {enabled} \
CONFIG.PCW_MIO_41_SLEW {fast} CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_42_PULLUP {enabled} CONFIG.PCW_MIO_42_SLEW {fast} \
CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_43_PULLUP {enabled} \
CONFIG.PCW_MIO_43_SLEW {fast} CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_44_PULLUP {enabled} CONFIG.PCW_MIO_44_SLEW {fast} \
CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_45_PULLUP {enabled} \
CONFIG.PCW_MIO_45_SLEW {fast} CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_46_PULLUP {enabled} CONFIG.PCW_MIO_46_SLEW {slow} \
CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_47_PULLUP {enabled} \
CONFIG.PCW_MIO_47_SLEW {slow} CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_48_PULLUP {enabled} CONFIG.PCW_MIO_48_SLEW {slow} \
CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_49_PULLUP {enabled} \
CONFIG.PCW_MIO_49_SLEW {slow} CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_4_SLEW {fast} CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_50_PULLUP {enabled} CONFIG.PCW_MIO_50_SLEW {slow} \
CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_51_PULLUP {enabled} \
CONFIG.PCW_MIO_51_SLEW {slow} CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_52_PULLUP {enabled} CONFIG.PCW_MIO_52_SLEW {slow} \
CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} CONFIG.PCW_MIO_53_PULLUP {enabled} \
CONFIG.PCW_MIO_53_SLEW {slow} CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_5_SLEW {fast} CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_6_SLEW {fast} CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_7_SLEW {slow} CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_8_SLEW {slow} CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_9_PULLUP {enabled} CONFIG.PCW_MIO_9_SLEW {slow} \
CONFIG.PCW_MIO_TREE_PERIPHERALS {SD 0#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#I2C Reset#GPIO#SD 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#CAN 0#CAN 0#UART 1#UART 1#I2C 0#I2C 0#GPIO#GPIO} CONFIG.PCW_MIO_TREE_SIGNALS {cd#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]#qspi0_sclk#gpio[7]#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#gpio[12]#reset#gpio[14]#wp#gpio[16]#gpio[17]#gpio[18]#gpio[19]#gpio[20]#gpio[21]#gpio[22]#gpio[23]#gpio[24]#gpio[25]#gpio[26]#gpio[27]#gpio[28]#gpio[29]#gpio[30]#gpio[31]#gpio[32]#gpio[33]#gpio[34]#gpio[35]#gpio[36]#gpio[37]#gpio[38]#gpio[39]#clk#cmd#data[0]#data[1]#data[2]#data[3]#rx#tx#tx#rx#scl#sda#gpio[52]#gpio[53]} \
CONFIG.PCW_NAND_CYCLES_T_AR {0} CONFIG.PCW_NAND_CYCLES_T_CLR {0} \
CONFIG.PCW_NAND_CYCLES_T_RC {2} CONFIG.PCW_NAND_CYCLES_T_REA {1} \
CONFIG.PCW_NAND_CYCLES_T_RR {0} CONFIG.PCW_NAND_CYCLES_T_WC {2} \
CONFIG.PCW_NAND_CYCLES_T_WP {1} CONFIG.PCW_NOR_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_CS0_T_PC {1} CONFIG.PCW_NOR_CS0_T_RC {2} \
CONFIG.PCW_NOR_CS0_T_TR {1} CONFIG.PCW_NOR_CS0_T_WC {2} \
CONFIG.PCW_NOR_CS0_T_WP {1} CONFIG.PCW_NOR_CS0_WE_TIME {2} \
CONFIG.PCW_NOR_CS1_T_CEOE {1} CONFIG.PCW_NOR_CS1_T_PC {1} \
CONFIG.PCW_NOR_CS1_T_RC {2} CONFIG.PCW_NOR_CS1_T_TR {1} \
CONFIG.PCW_NOR_CS1_T_WC {2} CONFIG.PCW_NOR_CS1_T_WP {1} \
CONFIG.PCW_NOR_CS1_WE_TIME {2} CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} CONFIG.PCW_NOR_SRAM_CS0_T_RC {2} \
CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} CONFIG.PCW_NOR_SRAM_CS0_T_WC {2} \
CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_RC {2} CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_WC {2} CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {2} CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.010} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.010} CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.010} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.013} CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.001} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.002} CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.001} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.008} CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {1} \
CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {MIO 0} CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {1} CONFIG.PCW_SD0_GRP_WP_IO {MIO 15} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {IO PLL} CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} CONFIG.PCW_UART1_BAUD_RATE {115200} \
CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
CONFIG.PCW_UIPARAM_DDR_AL {0} CONFIG.PCW_UIPARAM_DDR_BL {8} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.537} CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.442} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.464} CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.521} \
CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {61.0905} CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {61.0905} CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {68.4725} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {71.086} CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {66.794} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {108.7385} CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.217} CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.133} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.089} CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.248} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {64.1705} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {63.686} CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {68.46} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {105.4895} CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_ENABLE {1} CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M8 HX-15E} CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB0_RESET_ENABLE {1} CONFIG.PCW_USB0_RESET_IO {MIO 7} \
CONFIG.PCW_USB0_USB0_IO {<Select>} CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB_RESET_POLARITY {Active Low} CONFIG.PCW_USE_CROSS_TRIGGER {0} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_USE_M_AXI_GP0 {0} \
CONFIG.PCW_USE_S_AXI_ACP {0} CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
 ] $ps7

  # Create instance: xlconcat, and set properties
  set xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat ]
  set_property -dict [ list CONFIG.NUM_PORTS {1}  ] $xlconcat

  # Create interface connections
  connect_bd_intf_net -intf_net axis2io_0_to_io [get_bd_intf_pins axis2io_0/to_io] [get_bd_intf_pins io2axis_0/from_io]
  connect_bd_intf_net -intf_net ps7_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins ps7/DDR]
  connect_bd_intf_net -intf_net ps7_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins ps7/FIXED_IO]

  # Create port connections
  connect_bd_net -net clkid2 [get_bd_pins axis2io_0/ap_clk] [get_bd_pins io2axis_0/ap_clk] [get_bd_pins proc_sys_reset_2/slowest_sync_clk] [get_bd_pins ps7/FCLK_CLK2]
  connect_bd_net -net proc_sys_reset_2_peripheral_aresetn [get_bd_pins axis2io_0/ap_rst_n] [get_bd_pins io2axis_0/ap_rst_n] [get_bd_pins proc_sys_reset_2/peripheral_aresetn]
  connect_bd_net -net ps7_fclk_reset0_n [get_bd_pins proc_sys_reset_2/ext_reset_in] [get_bd_pins ps7/FCLK_RESET0_N]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins ps7/IRQ_F2P] [get_bd_pins xlconcat/dout]

  # Create address segments
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""

# pf_axis start - archive to encapsulate all IP
make_wrapper -files "[get_files [file join vivado pf_axis.srcs sources_1 bd pf_axis pf_axis.bd]]" -top
add_files -norecurse [file join vivado pf_axis.srcs sources_1 bd pf_axis hdl pf_axis_wrapper.v]
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

if {![llength [info vars pf]]} {
  set pf "pf_axis"
}
set_param project.enablePlatformHandoff true
set_property BD_ATTRIBUTE.SDI_PFM_CLOCK TRUE [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.SDI_PFM_CLOCK_ID 2 [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_intf_pins /io2axis_0/rbuf]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_intf_pins /axis2io_0/wbuf]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/interconnect_aresetn]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/peripheral_aresetn]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/peripheral_reset]
reset_target all [get_files "[file join vivado ${pf}.srcs sources_1 bd ${pf} ${pf}.bd]"]
validate_bd_design
save_bd_design
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
file mkdir "[file join vivado ${pf}.sdk]"
write_hwdef  -file "[file join vivado ${pf}.sdk ${pf}_wrapper.hdf]"
file copy -force "[file join vivado ${pf}.runs impl_1 ${pf}_wrapper.sysdef]" "[file join vivado ${pf}.sdk ${pf}_wrapper.hdf]"
archive_project pf_axis.xpr.zip -force
# pf_axis end
