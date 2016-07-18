start_gui
create_project zed_audio . -part xc7z020clg484-1
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property simulator_language Verilog [current_project]
create_bd_design "zed_audio"
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
endgroup
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]
regenerate_bd_layout
startgroup
set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.00} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {10.000000} CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_IRQ_F2P_INTR {1} CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0}] [get_bd_cells processing_system7_0]
endgroup
set_property ip_repo_paths  ./ip_repo [current_fileset]
update_ip_catalog
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
startgroup
set_property -dict [list CONFIG.C_GPIO_WIDTH {2} CONFIG.C_GPIO2_WIDTH {2} CONFIG.C_IS_DUAL {1}] [get_bd_cells axi_gpio_0]
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:user:zed_audio_ctrl:1.0 zed_audio_ctrl_0
endgroup
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" }  [get_bd_intf_pins zed_audio_ctrl_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" }  [get_bd_intf_pins axi_gpio_0/S_AXI]
startgroup
create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO
connect_bd_intf_net [get_bd_intf_pins axi_gpio_0/GPIO] [get_bd_intf_ports /GPIO]
endgroup
startgroup
create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO2
connect_bd_intf_net [get_bd_intf_pins axi_gpio_0/GPIO2] [get_bd_intf_ports /GPIO2]
endgroup
startgroup
create_bd_port -dir O BCLK
connect_bd_net [get_bd_pins /zed_audio_ctrl_0/BCLK] [get_bd_ports /BCLK]
endgroup
startgroup
create_bd_port -dir O LRCLK
connect_bd_net [get_bd_pins /zed_audio_ctrl_0/LRCLK] [get_bd_ports /LRCLK]
endgroup
startgroup
create_bd_port -dir O SDATA_O
connect_bd_net [get_bd_pins /zed_audio_ctrl_0/SDATA_O] [get_bd_ports /SDATA_O]
endgroup
startgroup
create_bd_port -dir I SDATA_I
connect_bd_net [get_bd_pins /zed_audio_ctrl_0/SDATA_I] [get_bd_ports /SDATA_I]
endgroup
startgroup
create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_1
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/IIC_1] [get_bd_intf_ports /IIC_1]
endgroup
startgroup
create_bd_port -dir O -type clk FCLK_CLK1
connect_bd_net [get_bd_pins /processing_system7_0/FCLK_CLK1] [get_bd_ports /FCLK_CLK1]
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
endgroup
set_property -dict [list CONFIG.NUM_PORTS {1}] [get_bd_cells xlconcat_0]
connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins processing_system7_0/IRQ_F2P]
regenerate_bd_layout
save_bd_design
make_wrapper -files [get_files ./zed_audio.srcs/sources_1/bd/zed_audio/zed_audio.bd] -top
add_files -norecurse ./zed_audio.srcs/sources_1/bd/zed_audio/hdl/zed_audio_wrapper.v
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
add_files -fileset constrs_1 -norecurse ./zed_audio.xdc
import_files -fileset constrs_1 ./zed_audio.xdc

