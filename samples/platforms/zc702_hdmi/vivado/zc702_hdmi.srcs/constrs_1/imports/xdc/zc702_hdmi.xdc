#
# pin constraints
#
set_property PACKAGE_PIN Y9 [get_ports VIDEO_CLK_P]
set_property PACKAGE_PIN Y8 [get_ports VIDEO_CLK_N]
set_property IOSTANDARD LVDS_25 [get_ports VIDEO_CLK_P]
set_property IOSTANDARD LVDS_25 [get_ports VIDEO_CLK_N]





## VIDEO constraints
set_property PACKAGE_PIN AB14 [get_ports {IIC_1_scl_io[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {IIC_1_scl_io[0]}]
set_property SLEW SLOW [get_ports {IIC_1_scl_io[0]}]
set_property DRIVE 8 [get_ports {IIC_1_scl_io[0]}]

set_property PACKAGE_PIN AB15 [get_ports {IIC_1_sda_io[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {IIC_1_sda_io[0]}]
set_property SLEW SLOW [get_ports {IIC_1_sda_io[0]}]
set_property DRIVE 8 [get_ports {IIC_1_sda_io[0]}]

# I2C_MUX_SCL  - FMC-G18 (LA16_p)
#set_property PACKAGE_PIN AC22 [get_ports IIC_1_scl_io]
#set_property IOSTANDARD LVCMOS25 [get_ports IIC_1_scl_io]
#set_property SLEW SLOW [get_ports IIC_1_scl_io]
#set_property DRIVE 8 [get_ports IIC_1_scl_io]

# I2C_MUX_SDA  - FMC-G19 (LA16_n)
#set_property PACKAGE_PIN AD22 [get_ports IIC_1_sda_io]
#set_property IOSTANDARD LVCMOS25 [get_ports IIC_1_sda_io]
#set_property SLEW SLOW [get_ports IIC_1_sda_io]
#set_property DRIVE 8 [get_ports IIC_1_sda_io]


# I2C_MUX_RST# - FMC-D9  (LA01_n_CC)
set_property PACKAGE_PIN Y16 [get_ports {fmc_imageon_iic_Rst_b_pin[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {fmc_imageon_iic_Rst_b_pin[0]}]
set_property SLEW SLOW [get_ports {fmc_imageon_iic_Rst_b_pin[0]}]
set_property DRIVE 8 [get_ports {fmc_imageon_iic_Rst_b_pin[0]}]

#################################
## Mapped fmc_imageon_hdmii_video[15:0] -> CY
set_property PACKAGE_PIN AA4 [get_ports {io_hdmii_video[0]}]
set_property PACKAGE_PIN Y4 [get_ports {io_hdmii_video[1]}]
set_property PACKAGE_PIN Y10 [get_ports {io_hdmii_video[2]}]
set_property PACKAGE_PIN Y11 [get_ports {io_hdmii_video[3]}]
set_property PACKAGE_PIN AB6 [get_ports {io_hdmii_video[4]}]
set_property PACKAGE_PIN AB7 [get_ports {io_hdmii_video[5]}]
set_property PACKAGE_PIN AB9 [get_ports {io_hdmii_video[6]}]
set_property PACKAGE_PIN AB10 [get_ports {io_hdmii_video[7]}]
set_property PACKAGE_PIN AB4 [get_ports {io_hdmii_video[8]}]
set_property PACKAGE_PIN AB5 [get_ports {io_hdmii_video[9]}]
set_property PACKAGE_PIN AB11 [get_ports {io_hdmii_video[10]}]
set_property PACKAGE_PIN AB1 [get_ports {io_hdmii_video[11]}]
set_property PACKAGE_PIN U11 [get_ports {io_hdmii_video[12]}]
set_property PACKAGE_PIN AA11 [get_ports {io_hdmii_video[13]}]
set_property PACKAGE_PIN AB2 [get_ports {io_hdmii_video[14]}]
set_property PACKAGE_PIN U12 [get_ports {io_hdmii_video[15]}]

# HDMII_LLC   - FMC-G2  (CLK1_M2C_p)
set_property PACKAGE_PIN Y6 [get_ports hdmi_clk]

set_property IOSTANDARD LVCMOS25 [get_ports hdmi_clk]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[15]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[14]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[13]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[12]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[11]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[10]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[9]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {io_hdmii_video[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports io_hdmii_spdif]
set_property IOSTANDARD LVCMOS25 [get_ports HDMI_O_int_pin]



# control signals
set_property PACKAGE_PIN L16 [get_ports pix_clk_o]
set_property IOSTANDARD LVCMOS25 [get_ports pix_clk_o]

set_property PACKAGE_PIN T18 [get_ports blank_o]
set_property IOSTANDARD LVCMOS25 [get_ports blank_o]

set_property PACKAGE_PIN R18 [get_ports hsync_o]
set_property IOSTANDARD LVCMOS25 [get_ports hsync_o]

set_property PACKAGE_PIN H15 [get_ports vsync_o]
set_property IOSTANDARD LVCMOS25 [get_ports vsync_o]
#set_property PACKAGE_PIN U14 [get_ports HDMI_O_int_pin]
# luma pins (Y)
set_property PACKAGE_PIN AB21 [get_ports {d_pix_o[0]}]
set_property PACKAGE_PIN AA21 [get_ports {d_pix_o[1]}]
set_property PACKAGE_PIN AB22 [get_ports {d_pix_o[2]}]
set_property PACKAGE_PIN AA22 [get_ports {d_pix_o[3]}]
set_property PACKAGE_PIN V19 [get_ports {d_pix_o[4]}]
set_property PACKAGE_PIN V18 [get_ports {d_pix_o[5]}]
set_property PACKAGE_PIN V20 [get_ports {d_pix_o[6]}]
set_property PACKAGE_PIN U20 [get_ports {d_pix_o[7]}]
# multiplexed chroma pins (Cr/Cb)
set_property PACKAGE_PIN W21 [get_ports {d_pix_o[8]}]
set_property PACKAGE_PIN W20 [get_ports {d_pix_o[9]}]
set_property PACKAGE_PIN W18 [get_ports {d_pix_o[10]}]
set_property PACKAGE_PIN T19 [get_ports {d_pix_o[11]}]
set_property PACKAGE_PIN U19 [get_ports {d_pix_o[12]}]
set_property PACKAGE_PIN R19 [get_ports {d_pix_o[13]}]
set_property PACKAGE_PIN T17 [get_ports {d_pix_o[14]}]
set_property PACKAGE_PIN T16 [get_ports {d_pix_o[15]}]

set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[15]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[14]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[13]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[12]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[11]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[10]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[9]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {d_pix_o[0]}]


##################################
### Mapped fmc_imageon_hdmio_video[15:0] -> CY
## HDMIO_SPDIF - FMC-H28 (LA24_p)
#set_property PACKAGE_PIN AG30 [get_ports fmc_imageon_hdmio_spdif]
## HDMIO_Y0    - FMC-G28 (LA25_n)
#set_property PACKAGE_PIN AD26 [get_ports {fmc_imageon_hdmio_video[0]}]
## HDMIO_Y1    - FMC-G27 (LA25_p)
#set_property PACKAGE_PIN AC26 [get_ports {fmc_imageon_hdmio_video[1]}]
## HDMIO_Y2    - FMC-H26 (LA21_n)
#set_property PACKAGE_PIN AG28 [get_ports {fmc_imageon_hdmio_video[2]}]
## HDMIO_Y3    - FMC-D24 (LA23_n)
#set_property PACKAGE_PIN AH27 [get_ports {fmc_imageon_hdmio_video[3]}]
## HDMIO_Y4    - FMC-H25 (LA21_p)
#set_property PACKAGE_PIN AG27 [get_ports {fmc_imageon_hdmio_video[4]}]
## HDMIO_Y5    - FMC-G25 (LA22_n)
#set_property PACKAGE_PIN AK28 [get_ports {fmc_imageon_hdmio_video[5]}]
## HDMIO_Y6    - FMC-C23 (LA18_n_CC)
#set_property PACKAGE_PIN AD28 [get_ports {fmc_imageon_hdmio_video[6]}]
## HDMIO_Y7    - FMC-D23 (LA23_p)
#set_property PACKAGE_PIN AH26 [get_ports {fmc_imageon_hdmio_video[7]}]
## HDMIO_CBCR0 - FMC-G24 (LA22_p)
#set_property PACKAGE_PIN AJ27 [get_ports {fmc_imageon_hdmio_video[8]}]
## HDMIO_CBCR1 - FMC-H23 (LA19_n)
#set_property PACKAGE_PIN AK26 [get_ports {fmc_imageon_hdmio_video[9]}]
## HDMIO_CBCR2 - FMC-C22 (LA18_p_CC)
#set_property PACKAGE_PIN AD27 [get_ports {fmc_imageon_hdmio_video[10]}]
## HDMIO_CBCR3 - FMC-D21 (LA17_n_CC)
#set_property PACKAGE_PIN AC27 [get_ports {fmc_imageon_hdmio_video[11]}]
## HDMIO_CBCR4 - FMC-H22 (LA19_p)
#set_property PACKAGE_PIN AJ26 [get_ports {fmc_imageon_hdmio_video[12]}]
## HDMIO_CBCR5 - FMC-G22 (LA20_n)
#set_property PACKAGE_PIN AF27 [get_ports {fmc_imageon_hdmio_video[13]}]
## HDMIO_CBCR6 - FMC-D20 (LA17_p_CC)
#set_property PACKAGE_PIN AB27 [get_ports {fmc_imageon_hdmio_video[14]}]
## HDMIO_CBCR7 - FMC-G21 (LA20_p)
#set_property PACKAGE_PIN AF26 [get_ports {fmc_imageon_hdmio_video[15]}]

## HDMIO_CLK   - FMC-G3  (CLK1_M2C_n)
#set_property PACKAGE_PIN AH29 [get_ports fmc_imageon_hdmio_clk]

#set_property IOSTANDARD LVCMOS25 [get_ports fmc_imageon_hdmio_*]


#
# additional constraints
#
create_clock -period 6.734 -name video_clk_pin [get_ports VIDEO_CLK_P]

create_clock -period 6.734 -name hdmi_clk [get_ports hdmi_clk]

#create_clock -name clk_fpga_0 -period "10" [get_pins design_1_i/processing_system7_1/FCLK_CLK0[0]]


#create_clock -add -period 13.333 -name clk_75mhz [get_pins design_1_i/clk_wiz_1/CLK_OUT1]
create_generated_clock -name clk_75mhz -source [get_pins system_top_i/clk_wiz_2/inst/mmcm_adv_inst/CLKIN1] -edges {1 2 3} -edge_shift {0.000 1.666 3.332} [get_pins system_top_i/clk_wiz_2/inst/mmcm_adv_inst/CLKOUT0]

#create_clock -add -period 6.666 -name clk_150mhz [get_pins design_1_i/clk_wiz_1/CLK_OUT2]
create_generated_clock -name clk_150mhz -source [get_pins system_top_i/clk_wiz_2/inst/mmcm_adv_inst/CLKIN1] -edges {1 2 3} -edge_shift {0.000 -1.667 -3.334} [get_pins system_top_i/clk_wiz_2/inst/mmcm_adv_inst/CLKOUT1]

create_generated_clock -name clk_mmcm0_feedback -source [get_pins system_top_i/clk_wiz_2/inst/mmcm_adv_inst/CLKIN1] -divide_by 1 [get_pins system_top_i/clk_wiz_2/inst/mmcm_adv_inst/CLKFBOUT]

set_clock_groups -name CLK_MUX -physically_exclusive -group [get_clocks hdmi_clk] -group [get_clocks video_clk_pin]

set_clock_groups -name CLK_ASYNCH1 -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks [list video_clk_pin hdmi_clk]]
set_clock_groups -name CLK_ASYNCH2 -asynchronous -group [get_clocks clk_75mhz] -group [get_clocks clk_150mhz]

###
set_clock_groups -name CLK_ASYNCH3 -asynchronous -group [get_clocks [list clk_75mhz clk_150mhz]] -group [get_clocks [list video_clk_pin hdmi_clk]]
set_clock_groups -name CLK_ASYNCH4 -asynchronous -group [get_clocks video_clk_pin] -group [get_clocks [list clk_75mhz clk_150mhz]]

###


set_input_delay -clock [get_clocks hdmi_clk] -max 1.000 [get_ports [list io_hdmii_spdif {io_hdmii_video[0]} {io_hdmii_video[10]} {io_hdmii_video[11]} {io_hdmii_video[12]} {io_hdmii_video[13]} {io_hdmii_video[14]} {io_hdmii_video[15]} {io_hdmii_video[1]} {io_hdmii_video[2]} {io_hdmii_video[3]} {io_hdmii_video[4]} {io_hdmii_video[5]} {io_hdmii_video[6]} {io_hdmii_video[7]} {io_hdmii_video[8]} {io_hdmii_video[9]}]]


# Constraint to override the clock rule
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets hdmi_clk]


set_property PACKAGE_PIN U5 [get_ports io_hdmii_spdif]
set_property PACKAGE_PIN U14 [get_ports HDMI_O_int_pin]


# This for not to allow 2 PERIODs to appear for the output of BUFGMUX
set_case_analysis 0 [get_pins system_top_i/vsrc_sel_1/video_sel]
