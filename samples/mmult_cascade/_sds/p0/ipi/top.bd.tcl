set diagram_name top
set diagram_handle [open_bd_design [get_files *.bd]]
current_bd_design $diagram_name

#---------------------------
# Constant blocks
#---------------------------

#---------------------------
# Platform Parameters for zed
#---------------------------
set ps7 [get_bd_cell /ps7]
    
set_property -dict [ list \
  CONFIG.PCW_USE_M_AXI_GP0 1 \
  CONFIG.PCW_USE_S_AXI_ACP 1 \
  CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL 1 \
  CONFIG.PCW_USE_FABRIC_INTERRUPT 1 \
  CONFIG.PCW_IRQ_F2P_INTR 1 \
  ] $ps7
set xlconcat [get_bd_cell /xlconcat]
    
set_property -dict [ list \
  CONFIG.NUM_PORTS 2 \
  ] $xlconcat

#---------------------------
# Instantiating datamover_0
#---------------------------
set datamover_0 [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 datamover_0]
  
set_property -dict [ list \
  CONFIG.C_DLYTMR_RESOLUTION {1250} \
  CONFIG.C_SG_LENGTH_WIDTH {23} \
  CONFIG.C_INCLUDE_SG {1} \
  CONFIG.C_SG_USE_STSAPP_LENGTH {0} \
  CONFIG.C_SG_INCLUDE_STSCNTRL_STRM {1} \
  CONFIG.C_INCLUDE_MM2S {1} \
  CONFIG.C_INCLUDE_S2MM {1} \
  CONFIG.C_INCLUDE_MM2S_SF {1} \
  CONFIG.C_INCLUDE_MM2S_DRE {1} \
  CONFIG.C_MM2S_BURST_SIZE {64} \
  CONFIG.C_M_AXI_MM2S_DATA_WIDTH {64} \
  CONFIG.C_M_AXIS_MM2S_TDATA_WIDTH {64} \
  CONFIG.C_INCLUDE_S2MM_SF {1} \
  CONFIG.C_INCLUDE_S2MM_DRE {1} \
  CONFIG.C_S2MM_BURST_SIZE {64} \
  CONFIG.C_M_AXI_S2MM_DATA_WIDTH {64} \
  CONFIG.C_S_AXIS_S2MM_TDATA_WIDTH {64} \
  ] $datamover_0

#---------------------------
# Instantiating mmult_accel_0
#---------------------------
set mmult_accel_0 [create_bd_cell -type ip -vlnv xilinx.com:hls:mmult_accel:1.0 mmult_accel_0]
  

#---------------------------
# Instantiating mmult_accel_1
#---------------------------
set mmult_accel_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:mmult_accel:1.0 mmult_accel_1]
  

#---------------------------
# Instantiating mmult_accel_0_if
#---------------------------
set mmult_accel_0_if [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_accelerator_adapter:2.1 mmult_accel_0_if]
  
set_property -dict [ list \
  CONFIG.C_AP_IARG_0_WIDTH {32} \
  CONFIG.C_AP_IARG_0_TYPE {1} \
  CONFIG.C_AP_IARG_0_DWIDTH {32} \
  CONFIG.C_AP_IARG_0_DIM_1 {256} \
  CONFIG.C_AP_IARG_1_WIDTH {32} \
  CONFIG.C_AP_IARG_1_TYPE {1} \
  CONFIG.C_AP_IARG_1_DWIDTH {32} \
  CONFIG.C_AP_IARG_1_DIM_1 {256} \
  CONFIG.C_AP_OARG_0_WIDTH {32} \
  CONFIG.C_AP_OARG_0_TYPE {1} \
  CONFIG.C_AP_OARG_0_DWIDTH {32} \
  CONFIG.C_AP_OARG_0_DIM_1 {256} \
  CONFIG.C_N_OUTPUT_ARGS {1} \
  CONFIG.C_N_INPUT_ARGS {2} \
  CONFIG.C_M_AXIS_HAS_TKEEP {1} \
  CONFIG.C_M_AXIS_HAS_TSTRB {1} \
  CONFIG.C_M_AXIS_TDATA_WIDTH {64} \
  CONFIG.C_S_AXIS_TDATA_WIDTH {64} \
  ] $mmult_accel_0_if

#---------------------------
# Instantiating mmult_accel_1_if
#---------------------------
set mmult_accel_1_if [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_accelerator_adapter:2.1 mmult_accel_1_if]
  
set_property -dict [ list \
  CONFIG.C_AP_IARG_0_WIDTH {32} \
  CONFIG.C_AP_IARG_0_TYPE {1} \
  CONFIG.C_AP_IARG_0_DWIDTH {32} \
  CONFIG.C_AP_IARG_0_DIM_1 {256} \
  CONFIG.C_AP_IARG_1_WIDTH {32} \
  CONFIG.C_AP_IARG_1_TYPE {1} \
  CONFIG.C_AP_IARG_1_DWIDTH {32} \
  CONFIG.C_AP_IARG_1_DIM_1 {256} \
  CONFIG.C_AP_OARG_0_WIDTH {32} \
  CONFIG.C_AP_OARG_0_TYPE {1} \
  CONFIG.C_AP_OARG_0_DWIDTH {32} \
  CONFIG.C_AP_OARG_0_DIM_1 {256} \
  CONFIG.C_N_OUTPUT_ARGS {1} \
  CONFIG.C_N_INPUT_ARGS {2} \
  CONFIG.C_M_AXIS_HAS_TKEEP {1} \
  CONFIG.C_M_AXIS_HAS_TSTRB {1} \
  CONFIG.C_M_AXIS_TDATA_WIDTH {64} \
  CONFIG.C_S_AXIS_TDATA_WIDTH {64} \
  ] $mmult_accel_1_if

#---------------------------
# Instantiating axi_interconnect_M_AXI_GP0
#---------------------------
set axi_interconnect_M_AXI_GP0 [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_M_AXI_GP0]
  
set_property -dict [ list \
  CONFIG.NUM_MI {3} \
  CONFIG.NUM_SI {1} \
  CONFIG.STRATEGY {2} \
  CONFIG.M00_HAS_REGSLICE {1} \
  CONFIG.M01_HAS_REGSLICE {1} \
  CONFIG.M02_HAS_REGSLICE {1} \
  CONFIG.S00_HAS_REGSLICE {1} \
  ] $axi_interconnect_M_AXI_GP0

#---------------------------
# Instantiating axi_interconnect_S_AXI_ACP
#---------------------------
set axi_interconnect_S_AXI_ACP [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_S_AXI_ACP]
  
set_property -dict [ list \
  CONFIG.NUM_MI {1} \
  CONFIG.NUM_SI {3} \
  CONFIG.STRATEGY {2} \
  CONFIG.M00_HAS_REGSLICE {1} \
  CONFIG.M00_HAS_DATA_FIFO {2} \
  CONFIG.S00_HAS_REGSLICE {1} \
  CONFIG.S00_HAS_DATA_FIFO {2} \
  CONFIG.S01_HAS_REGSLICE {1} \
  CONFIG.S01_HAS_DATA_FIFO {2} \
  CONFIG.S02_HAS_REGSLICE {1} \
  CONFIG.S02_HAS_DATA_FIFO {2} \
  ] $axi_interconnect_S_AXI_ACP

#---------------------------
# Instantiating axis_rtr_datamover_0
#---------------------------
set axis_rtr_datamover_0 [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_stream_router:1.0 axis_rtr_datamover_0]
  
set_property -dict [ list \
  CONFIG.C_NUM_MASTER_SLOTS {3} \
  CONFIG.C_NUM_SLAVE_SLOTS {1} \
  CONFIG.C_M_AXIS_RXD_TDATA_WIDTH {64} \
  CONFIG.C_S_AXIS_TXD_TDATA_WIDTH {64} \
  CONFIG.C_M_AXIS_TDATA_WIDTH {64} \
  CONFIG.C_S_AXIS_TDATA_WIDTH {64} \
  ] $axis_rtr_datamover_0

#---------------------------
# Instantiating acp_axcache_0xF
#---------------------------
set acp_axcache_0xF [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 acp_axcache_0xF]
  
set_property -dict [ list \
  CONFIG.CONST_WIDTH {4} \
  CONFIG.CONST_VAL {15} \
  ] $acp_axcache_0xF

#---------------------------
# Instantiating acp_axcache_0x3
#---------------------------
set acp_axcache_0x3 [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 acp_axcache_0x3]
  
set_property -dict [ list \
  CONFIG.CONST_WIDTH {4} \
  CONFIG.CONST_VAL {3} \
  ] $acp_axcache_0x3

#---------------------------
# Connectivity
#---------------------------
connect_bd_net  \
  [get_bd_pins /mmult_accel_0_if/aresetn] \
  [get_bd_pins /mmult_accel_0/ap_rst_n] \

connect_bd_net  \
  [get_bd_pins /mmult_accel_1_if/aresetn] \
  [get_bd_pins /mmult_accel_1/ap_rst_n] \

connect_bd_net  \
  [get_bd_pins /ps7/FCLK_CLK1] \
  [get_bd_pins /datamover_0/s_axi_lite_aclk] \
  [get_bd_pins /datamover_0/m_axi_sg_aclk] \
  [get_bd_pins /datamover_0/m_axi_mm2s_aclk] \
  [get_bd_pins /datamover_0/m_axi_s2mm_aclk] \
  [get_bd_pins /ps7/M_AXI_GP0_ACLK] \
  [get_bd_pins /ps7/S_AXI_ACP_ACLK] \
  [get_bd_pins /mmult_accel_0/ap_clk] \
  [get_bd_pins /mmult_accel_1/ap_clk] \
  [get_bd_pins /mmult_accel_0_if/s_axi_aclk] \
  [get_bd_pins /mmult_accel_0_if/aclk] \
  [get_bd_pins /mmult_accel_0_if/m_axis_aclk] \
  [get_bd_pins /mmult_accel_0_if/s_axis_aclk] \
  [get_bd_pins /mmult_accel_1_if/s_axi_aclk] \
  [get_bd_pins /mmult_accel_1_if/aclk] \
  [get_bd_pins /mmult_accel_1_if/m_axis_aclk] \
  [get_bd_pins /mmult_accel_1_if/s_axis_aclk] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/ACLK] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/S00_ACLK] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/M00_ACLK] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/M01_ACLK] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/M02_ACLK] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/ACLK] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/M00_ACLK] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S00_ACLK] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S01_ACLK] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S02_ACLK] \
  [get_bd_pins /axis_rtr_datamover_0/M_AXIS_0_ACLK] \
  [get_bd_pins /axis_rtr_datamover_0/M_AXIS_1_ACLK] \
  [get_bd_pins /axis_rtr_datamover_0/M_AXIS_2_ACLK] \
  [get_bd_pins /axis_rtr_datamover_0/S_AXIS_0_ACLK] \
  [get_bd_pins /axis_rtr_datamover_0/s_axis_txd_aclk] \
  [get_bd_pins /axis_rtr_datamover_0/s_axis_txc_aclk] \
  [get_bd_pins /axis_rtr_datamover_0/m_axis_rxd_aclk] \
  [get_bd_pins /axis_rtr_datamover_0/m_axis_rxs_aclk] \

connect_bd_net  \
  [get_bd_pins /proc_sys_reset_1/interconnect_aresetn] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/ARESETN] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/S00_ARESETN] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/M00_ARESETN] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/M01_ARESETN] \
  [get_bd_pins /axi_interconnect_M_AXI_GP0/M02_ARESETN] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/ARESETN] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/M00_ARESETN] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S00_ARESETN] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S01_ARESETN] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S02_ARESETN] \

connect_bd_net  \
  [get_bd_pins /proc_sys_reset_1/peripheral_aresetn] \
  [get_bd_pins /datamover_0/axi_resetn] \
  [get_bd_pins /mmult_accel_0_if/s_axi_aresetn] \
  [get_bd_pins /mmult_accel_0_if/m_axis_aresetn] \
  [get_bd_pins /mmult_accel_0_if/s_axis_aresetn] \
  [get_bd_pins /mmult_accel_1_if/s_axi_aresetn] \
  [get_bd_pins /mmult_accel_1_if/m_axis_aresetn] \
  [get_bd_pins /mmult_accel_1_if/s_axis_aresetn] \
  [get_bd_pins /axis_rtr_datamover_0/m_axis_rxs_aresetn] \
  [get_bd_pins /axis_rtr_datamover_0/m_axis_rxd_aresetn] \
  [get_bd_pins /axis_rtr_datamover_0/s_axis_txc_aresetn] \
  [get_bd_pins /axis_rtr_datamover_0/s_axis_txd_aresetn] \

connect_bd_net  \
  [get_bd_pins /datamover_0/mm2s_introut] \
  [get_bd_pins /xlconcat/In0] \

connect_bd_net  \
  [get_bd_pins /datamover_0/s2mm_introut] \
  [get_bd_pins /xlconcat/In1] \

connect_bd_net  \
  [get_bd_pins /acp_axcache_0xF/dout] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S01_AXI_arcache] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S02_AXI_awcache] \

connect_bd_net  \
  [get_bd_pins /acp_axcache_0x3/dout] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S00_AXI_arcache] \
  [get_bd_pins /axi_interconnect_S_AXI_ACP/S00_AXI_awcache] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_0_if/ap_ctrl] \
  [get_bd_intf_pins /mmult_accel_0/ap_ctrl] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_0/in_A] \
  [get_bd_intf_pins /mmult_accel_0_if/AP_FIFO_IARG_0] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_0/in_B] \
  [get_bd_intf_pins /mmult_accel_0_if/AP_FIFO_IARG_1] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_0/out_C] \
  [get_bd_intf_pins /mmult_accel_0_if/AP_FIFO_OARG_0] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_1_if/ap_ctrl] \
  [get_bd_intf_pins /mmult_accel_1/ap_ctrl] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_1/in_A] \
  [get_bd_intf_pins /mmult_accel_1_if/AP_FIFO_IARG_0] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_1/in_B] \
  [get_bd_intf_pins /mmult_accel_1_if/AP_FIFO_IARG_1] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_1/out_C] \
  [get_bd_intf_pins /mmult_accel_1_if/AP_FIFO_OARG_0] \

connect_bd_intf_net \
  [get_bd_intf_pins /ps7/M_AXI_GP0] \
  [get_bd_intf_pins /axi_interconnect_M_AXI_GP0/S00_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /axi_interconnect_S_AXI_ACP/M00_AXI] \
  [get_bd_intf_pins /ps7/S_AXI_ACP] \

connect_bd_intf_net \
  [get_bd_intf_pins /axi_interconnect_M_AXI_GP0/M00_AXI] \
  [get_bd_intf_pins /mmult_accel_0_if/S_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /axi_interconnect_M_AXI_GP0/M01_AXI] \
  [get_bd_intf_pins /mmult_accel_1_if/S_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /axi_interconnect_M_AXI_GP0/M02_AXI] \
  [get_bd_intf_pins /datamover_0/S_AXI_LITE] \

connect_bd_intf_net \
  [get_bd_intf_pins /datamover_0/M_AXI_SG] \
  [get_bd_intf_pins /axi_interconnect_S_AXI_ACP/S00_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /datamover_0/M_AXI_MM2S] \
  [get_bd_intf_pins /axi_interconnect_S_AXI_ACP/S01_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /datamover_0/M_AXI_S2MM] \
  [get_bd_intf_pins /axi_interconnect_S_AXI_ACP/S02_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /datamover_0/M_AXIS_MM2S] \
  [get_bd_intf_pins /axis_rtr_datamover_0/s_axis_txd] \

connect_bd_intf_net \
  [get_bd_intf_pins /datamover_0/M_AXIS_CNTRL] \
  [get_bd_intf_pins /axis_rtr_datamover_0/s_axis_txc] \

connect_bd_intf_net \
  [get_bd_intf_pins /axis_rtr_datamover_0/M_AXIS_0] \
  [get_bd_intf_pins /mmult_accel_0_if/S_AXIS_1] \

connect_bd_intf_net \
  [get_bd_intf_pins /axis_rtr_datamover_0/M_AXIS_1] \
  [get_bd_intf_pins /mmult_accel_1_if/S_AXIS_0] \

connect_bd_intf_net \
  [get_bd_intf_pins /axis_rtr_datamover_0/M_AXIS_2] \
  [get_bd_intf_pins /mmult_accel_1_if/S_AXIS_1] \

connect_bd_intf_net \
  [get_bd_intf_pins /axis_rtr_datamover_0/m_axis_rxd] \
  [get_bd_intf_pins /datamover_0/S_AXIS_S2MM] \

connect_bd_intf_net \
  [get_bd_intf_pins /axis_rtr_datamover_0/m_axis_rxs] \
  [get_bd_intf_pins /datamover_0/S_AXIS_STS] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_0_if/M_AXIS_0] \
  [get_bd_intf_pins /axis_rtr_datamover_0/S_AXIS_0] \

connect_bd_intf_net \
  [get_bd_intf_pins /mmult_accel_1_if/M_AXIS_0] \
  [get_bd_intf_pins /mmult_accel_0_if/S_AXIS_0] \

#---------------------------
# Automation Commands
#---------------------------
assign_bd_address
delete_bd_objs [get_bd_addr_segs */Data/SEG_ps7_ACP_IOP]


#---------------------------
# Create Address Map file
#---------------------------
set xml_file address_map.xml
set fp [open ${xml_file} w]
set addr_segs [get_bd_addr_segs -hier]
puts $fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
puts $fp "<xd:addressMap xmlns:xd=\"http://www.xilinx.com/xd\">"
foreach addr_seg $addr_segs {
  set path [get_property PATH $addr_seg]
  set offset [get_property OFFSET $addr_seg]
  if {$offset != ""} {
    set range [format 0x%X [get_property RANGE $addr_seg]]
    set high_addr [format 0x%X [expr $offset + $range - 1]]
    set slave [get_bd_addr_segs -of_object $addr_seg]
    regexp {([^/]+)/([^/]+)/([^/]+)$} $path match componentRef addressSpace segment
    regexp {([^/]+)/([^/]+)/([^/]+)$} $slave match slaveRef slaveMemoryMap slaveSegment  
    set slaveIntfPin [get_bd_intf_pins -of_objects $slave]
    regexp {([^/]+)$} $slaveIntfPin match slaveInterface
    puts $fp "  <xd:addressRange xd:componentRef=\"${componentRef}\" xd:addressSpace=\"${addressSpace}\" xd:segment=\"${segment}\" xd:slaveRef=\"${slaveRef}\" xd:slaveInterface=\"${slaveInterface}\" xd:slaveSegment=\"${slaveSegment}\" xd:baseAddr=\"${offset}\" xd:range=\"${range}\"/>"
  }
}
puts $fp "</xd:addressMap>"

close $fp
