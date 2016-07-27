`timescale 1 ps / 1 ps
// lib IP_Integrator_Lib
module top_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    IIC_1_scl_io,
    IIC_1_sda_io,
    blank_o,
    d_pix_o,
    fmc_imageon_iic_Rst_b_pin,
    hdmi_clk,
    hsync_o,
    io_hdmii_spdif,
    io_hdmii_video,
    pix_clk_o,
    VIDEO_CLK_P,
    VIDEO_CLK_N,
    vsync_o,
    HDMI_O_int_pin);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout [0:0]DDR_cas_n;
  inout [0:0]DDR_ck_n;
  inout [0:0]DDR_ck_p;
  inout [0:0]DDR_cke;
  inout [0:0]DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout [0:0]DDR_odt;
  inout [0:0]DDR_ras_n;
  inout [0:0]DDR_reset_n;
  inout [0:0]DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [0:0]IIC_1_scl_io;
  inout [0:0]IIC_1_sda_io;
  output blank_o;
  output [15:0]d_pix_o;
  output [0:0]fmc_imageon_iic_Rst_b_pin;
  input hdmi_clk;
  output hsync_o;
  input io_hdmii_spdif;
  input [15:0]io_hdmii_video;
  output pix_clk_o;
  input VIDEO_CLK_P;
  input VIDEO_CLK_N;  
  output vsync_o;
  input HDMI_O_int_pin;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire [0:0]DDR_cas_n;
  wire [0:0]DDR_ck_n;
  wire [0:0]DDR_ck_p;
  wire [0:0]DDR_cke;
  wire [0:0]DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire [0:0]DDR_odt;
  wire [0:0]DDR_ras_n;
  wire [0:0]DDR_reset_n;
  wire [0:0]DDR_we_n;
  wire [0:0]IIC_1_scl_i_0;
  wire [0:0]IIC_1_scl_io_0;
  wire [0:0]IIC_1_scl_o_0;
  wire [0:0]IIC_1_scl_t_0;
  wire [0:0]IIC_1_sda_i_0;
  wire [0:0]IIC_1_sda_io_0;
  wire [0:0]IIC_1_sda_o_0;
  wire [0:0]IIC_1_sda_t_0;
  wire blank_o;
  wire [15:0]d_pix_o;
  wire [0:0]fmc_imageon_iic_Rst_b_pin;
  wire hdmi_clk;
  wire hsync_o;
  wire io_hdmii_spdif;
  wire [15:0]io_hdmii_video;
  wire pix_clk_o;
  wire video_clk;
  wire vsync_o;
  
  wire VIDEO_CLK;
  wire VIDEO_CLK_SYS;

  IBUFGDS ibufgds_0 
     (
      .I (VIDEO_CLK_P),
      .IB(VIDEO_CLK_N),
      .O (VIDEO_CLK)
    );

   BUFG BUFG_INST 
   (
   .I(VIDEO_CLK),
   .O(VIDEO_CLK_SYS)
   );




  xVIA IIC_1_scl_io_0via (IIC_1_scl_io[0], IIC_1_scl_io_0);
  xVIA IIC_1_sda_io_0via (IIC_1_sda_io[0], IIC_1_sda_io_0);
IOBUF IIC_1_scl_iobuf_0
       (.I(IIC_1_scl_o_0),
        .IO(IIC_1_scl_io_0),
        .O(IIC_1_scl_i_0),
        .T(IIC_1_scl_t_0));
IOBUF IIC_1_sda_iobuf_0
       (.I(IIC_1_sda_o_0),
        .IO(IIC_1_sda_io_0),
        .O(IIC_1_sda_i_0),
        .T(IIC_1_sda_t_0));
top system_top_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .IIC_1_scl_i(IIC_1_scl_i_0),
        .IIC_1_scl_o(IIC_1_scl_o_0),
        .IIC_1_scl_t(IIC_1_scl_t_0),
        .IIC_1_sda_i(IIC_1_sda_i_0),
        .IIC_1_sda_o(IIC_1_sda_o_0),
        .IIC_1_sda_t(IIC_1_sda_t_0),
        .blank_o(blank_o),
        .d_pix_o(d_pix_o),
        .fmc_imageon_iic_Rst_b_pin(fmc_imageon_iic_Rst_b_pin),
        .hdmi_clk(hdmi_clk),
        .hsync_o(hsync_o),
        .io_hdmii_spdif(io_hdmii_spdif),
        .io_hdmii_video(io_hdmii_video),
        .pix_clk_o(pix_clk_o),
        .video_clk(VIDEO_CLK_SYS),
        .vsync_o(vsync_o),
        .HDMI_O_int_pin(HDMI_O_int_pin));
endmodule
module xVIA(.a(w),.b(w));
inout w;
endmodule
