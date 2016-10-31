//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:48:31 MST 2014
//Date        : Mon Oct 31 21:13:59 2016
//Host        : verratnix.zmk.uni-kl.de running 64-bit CentOS release 6.7 (Final)
//Command     : generate_target zed.bd
//Design      : zed
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module s00_couplers_imp_15ENQ9K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [12:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [12:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [12:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [11:0]s00_couplers_to_s00_regslice_ARID;
  wire [3:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [11:0]s00_couplers_to_s00_regslice_AWID;
  wire [3:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [1:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [11:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [11:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire [11:0]s00_couplers_to_s00_regslice_WID;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_pc_ARADDR;
  wire [1:0]s00_regslice_to_auto_pc_ARBURST;
  wire [3:0]s00_regslice_to_auto_pc_ARCACHE;
  wire [11:0]s00_regslice_to_auto_pc_ARID;
  wire [3:0]s00_regslice_to_auto_pc_ARLEN;
  wire [1:0]s00_regslice_to_auto_pc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_pc_ARPROT;
  wire [3:0]s00_regslice_to_auto_pc_ARQOS;
  wire s00_regslice_to_auto_pc_ARREADY;
  wire [2:0]s00_regslice_to_auto_pc_ARSIZE;
  wire s00_regslice_to_auto_pc_ARVALID;
  wire [31:0]s00_regslice_to_auto_pc_AWADDR;
  wire [1:0]s00_regslice_to_auto_pc_AWBURST;
  wire [3:0]s00_regslice_to_auto_pc_AWCACHE;
  wire [11:0]s00_regslice_to_auto_pc_AWID;
  wire [3:0]s00_regslice_to_auto_pc_AWLEN;
  wire [1:0]s00_regslice_to_auto_pc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_pc_AWPROT;
  wire [3:0]s00_regslice_to_auto_pc_AWQOS;
  wire s00_regslice_to_auto_pc_AWREADY;
  wire [2:0]s00_regslice_to_auto_pc_AWSIZE;
  wire s00_regslice_to_auto_pc_AWVALID;
  wire [11:0]s00_regslice_to_auto_pc_BID;
  wire s00_regslice_to_auto_pc_BREADY;
  wire [1:0]s00_regslice_to_auto_pc_BRESP;
  wire s00_regslice_to_auto_pc_BVALID;
  wire [31:0]s00_regslice_to_auto_pc_RDATA;
  wire [11:0]s00_regslice_to_auto_pc_RID;
  wire s00_regslice_to_auto_pc_RLAST;
  wire s00_regslice_to_auto_pc_RREADY;
  wire [1:0]s00_regslice_to_auto_pc_RRESP;
  wire s00_regslice_to_auto_pc_RVALID;
  wire [31:0]s00_regslice_to_auto_pc_WDATA;
  wire [11:0]s00_regslice_to_auto_pc_WID;
  wire s00_regslice_to_auto_pc_WLAST;
  wire s00_regslice_to_auto_pc_WREADY;
  wire [3:0]s00_regslice_to_auto_pc_WSTRB;
  wire s00_regslice_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
zed_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_regslice_to_auto_pc_ARADDR[12:0]),
        .s_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_regslice_to_auto_pc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_pc_AWADDR[12:0]),
        .s_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_pc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_pc_BID),
        .s_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_pc_RID),
        .s_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .s_axi_wid(s00_regslice_to_auto_pc_WID),
        .s_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_pc_WVALID));
zed_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_pc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .m_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_pc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .m_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_pc_BID),
        .m_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_pc_RID),
        .m_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .m_axi_wid(s00_regslice_to_auto_pc_WID),
        .m_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_pc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wid(s00_couplers_to_s00_regslice_WID),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1JVMGI1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_auto_us_df_ARADDR;
  wire [1:0]auto_pc_to_auto_us_df_ARBURST;
  wire [3:0]auto_pc_to_auto_us_df_ARCACHE;
  wire [0:0]auto_pc_to_auto_us_df_ARID;
  wire [3:0]auto_pc_to_auto_us_df_ARLEN;
  wire [1:0]auto_pc_to_auto_us_df_ARLOCK;
  wire [2:0]auto_pc_to_auto_us_df_ARPROT;
  wire [3:0]auto_pc_to_auto_us_df_ARQOS;
  wire auto_pc_to_auto_us_df_ARREADY;
  wire [2:0]auto_pc_to_auto_us_df_ARSIZE;
  wire auto_pc_to_auto_us_df_ARVALID;
  wire [31:0]auto_pc_to_auto_us_df_AWADDR;
  wire [1:0]auto_pc_to_auto_us_df_AWBURST;
  wire [3:0]auto_pc_to_auto_us_df_AWCACHE;
  wire [0:0]auto_pc_to_auto_us_df_AWID;
  wire [3:0]auto_pc_to_auto_us_df_AWLEN;
  wire [1:0]auto_pc_to_auto_us_df_AWLOCK;
  wire [2:0]auto_pc_to_auto_us_df_AWPROT;
  wire [3:0]auto_pc_to_auto_us_df_AWQOS;
  wire auto_pc_to_auto_us_df_AWREADY;
  wire [2:0]auto_pc_to_auto_us_df_AWSIZE;
  wire auto_pc_to_auto_us_df_AWVALID;
  wire [0:0]auto_pc_to_auto_us_df_BID;
  wire auto_pc_to_auto_us_df_BREADY;
  wire [1:0]auto_pc_to_auto_us_df_BRESP;
  wire auto_pc_to_auto_us_df_BVALID;
  wire [31:0]auto_pc_to_auto_us_df_RDATA;
  wire [0:0]auto_pc_to_auto_us_df_RID;
  wire auto_pc_to_auto_us_df_RLAST;
  wire auto_pc_to_auto_us_df_RREADY;
  wire [1:0]auto_pc_to_auto_us_df_RRESP;
  wire auto_pc_to_auto_us_df_RVALID;
  wire [31:0]auto_pc_to_auto_us_df_WDATA;
  wire auto_pc_to_auto_us_df_WLAST;
  wire auto_pc_to_auto_us_df_WREADY;
  wire [3:0]auto_pc_to_auto_us_df_WSTRB;
  wire auto_pc_to_auto_us_df_WVALID;
  wire [31:0]auto_us_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s00_couplers_ARCACHE;
  wire [3:0]auto_us_df_to_s00_couplers_ARLEN;
  wire [1:0]auto_us_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s00_couplers_ARQOS;
  wire auto_us_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s00_couplers_ARSIZE;
  wire auto_us_df_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s00_couplers_AWCACHE;
  wire [3:0]auto_us_df_to_s00_couplers_AWLEN;
  wire [1:0]auto_us_df_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s00_couplers_AWQOS;
  wire auto_us_df_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s00_couplers_AWSIZE;
  wire auto_us_df_to_s00_couplers_AWVALID;
  wire auto_us_df_to_s00_couplers_BREADY;
  wire [1:0]auto_us_df_to_s00_couplers_BRESP;
  wire auto_us_df_to_s00_couplers_BVALID;
  wire [63:0]auto_us_df_to_s00_couplers_RDATA;
  wire auto_us_df_to_s00_couplers_RLAST;
  wire auto_us_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_df_to_s00_couplers_RRESP;
  wire auto_us_df_to_s00_couplers_RVALID;
  wire [63:0]auto_us_df_to_s00_couplers_WDATA;
  wire auto_us_df_to_s00_couplers_WLAST;
  wire auto_us_df_to_s00_couplers_WREADY;
  wire [7:0]auto_us_df_to_s00_couplers_WSTRB;
  wire auto_us_df_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [0:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [0:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [0:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [0:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_pc_ARADDR;
  wire [1:0]s00_regslice_to_auto_pc_ARBURST;
  wire [3:0]s00_regslice_to_auto_pc_ARCACHE;
  wire [0:0]s00_regslice_to_auto_pc_ARID;
  wire [7:0]s00_regslice_to_auto_pc_ARLEN;
  wire [0:0]s00_regslice_to_auto_pc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_pc_ARPROT;
  wire [3:0]s00_regslice_to_auto_pc_ARQOS;
  wire s00_regslice_to_auto_pc_ARREADY;
  wire [3:0]s00_regslice_to_auto_pc_ARREGION;
  wire [2:0]s00_regslice_to_auto_pc_ARSIZE;
  wire s00_regslice_to_auto_pc_ARVALID;
  wire [31:0]s00_regslice_to_auto_pc_AWADDR;
  wire [1:0]s00_regslice_to_auto_pc_AWBURST;
  wire [3:0]s00_regslice_to_auto_pc_AWCACHE;
  wire [0:0]s00_regslice_to_auto_pc_AWID;
  wire [7:0]s00_regslice_to_auto_pc_AWLEN;
  wire [0:0]s00_regslice_to_auto_pc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_pc_AWPROT;
  wire [3:0]s00_regslice_to_auto_pc_AWQOS;
  wire s00_regslice_to_auto_pc_AWREADY;
  wire [3:0]s00_regslice_to_auto_pc_AWREGION;
  wire [2:0]s00_regslice_to_auto_pc_AWSIZE;
  wire s00_regslice_to_auto_pc_AWVALID;
  wire [0:0]s00_regslice_to_auto_pc_BID;
  wire s00_regslice_to_auto_pc_BREADY;
  wire [1:0]s00_regslice_to_auto_pc_BRESP;
  wire s00_regslice_to_auto_pc_BVALID;
  wire [31:0]s00_regslice_to_auto_pc_RDATA;
  wire [0:0]s00_regslice_to_auto_pc_RID;
  wire s00_regslice_to_auto_pc_RLAST;
  wire s00_regslice_to_auto_pc_RREADY;
  wire [1:0]s00_regslice_to_auto_pc_RRESP;
  wire s00_regslice_to_auto_pc_RVALID;
  wire [31:0]s00_regslice_to_auto_pc_WDATA;
  wire s00_regslice_to_auto_pc_WLAST;
  wire s00_regslice_to_auto_pc_WREADY;
  wire [3:0]s00_regslice_to_auto_pc_WSTRB;
  wire s00_regslice_to_auto_pc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = auto_us_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[3:0] = auto_us_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_us_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_us_df_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_us_df_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_df_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_df_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_us_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
zed_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_auto_us_df_ARADDR),
        .m_axi_arburst(auto_pc_to_auto_us_df_ARBURST),
        .m_axi_arcache(auto_pc_to_auto_us_df_ARCACHE),
        .m_axi_arid(auto_pc_to_auto_us_df_ARID),
        .m_axi_arlen(auto_pc_to_auto_us_df_ARLEN),
        .m_axi_arlock(auto_pc_to_auto_us_df_ARLOCK),
        .m_axi_arprot(auto_pc_to_auto_us_df_ARPROT),
        .m_axi_arqos(auto_pc_to_auto_us_df_ARQOS),
        .m_axi_arready(auto_pc_to_auto_us_df_ARREADY),
        .m_axi_arsize(auto_pc_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(auto_pc_to_auto_us_df_ARVALID),
        .m_axi_awaddr(auto_pc_to_auto_us_df_AWADDR),
        .m_axi_awburst(auto_pc_to_auto_us_df_AWBURST),
        .m_axi_awcache(auto_pc_to_auto_us_df_AWCACHE),
        .m_axi_awid(auto_pc_to_auto_us_df_AWID),
        .m_axi_awlen(auto_pc_to_auto_us_df_AWLEN),
        .m_axi_awlock(auto_pc_to_auto_us_df_AWLOCK),
        .m_axi_awprot(auto_pc_to_auto_us_df_AWPROT),
        .m_axi_awqos(auto_pc_to_auto_us_df_AWQOS),
        .m_axi_awready(auto_pc_to_auto_us_df_AWREADY),
        .m_axi_awsize(auto_pc_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(auto_pc_to_auto_us_df_AWVALID),
        .m_axi_bid(auto_pc_to_auto_us_df_BID),
        .m_axi_bready(auto_pc_to_auto_us_df_BREADY),
        .m_axi_bresp(auto_pc_to_auto_us_df_BRESP),
        .m_axi_bvalid(auto_pc_to_auto_us_df_BVALID),
        .m_axi_rdata(auto_pc_to_auto_us_df_RDATA),
        .m_axi_rid(auto_pc_to_auto_us_df_RID),
        .m_axi_rlast(auto_pc_to_auto_us_df_RLAST),
        .m_axi_rready(auto_pc_to_auto_us_df_RREADY),
        .m_axi_rresp(auto_pc_to_auto_us_df_RRESP),
        .m_axi_rvalid(auto_pc_to_auto_us_df_RVALID),
        .m_axi_wdata(auto_pc_to_auto_us_df_WDATA),
        .m_axi_wlast(auto_pc_to_auto_us_df_WLAST),
        .m_axi_wready(auto_pc_to_auto_us_df_WREADY),
        .m_axi_wstrb(auto_pc_to_auto_us_df_WSTRB),
        .m_axi_wvalid(auto_pc_to_auto_us_df_WVALID),
        .s_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_regslice_to_auto_pc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_pc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_pc_BID),
        .s_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_pc_RID),
        .s_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_pc_WVALID));
zed_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_pc_to_auto_us_df_ARADDR),
        .s_axi_arburst(auto_pc_to_auto_us_df_ARBURST),
        .s_axi_arcache(auto_pc_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(auto_pc_to_auto_us_df_ARID),
        .s_axi_arlen(auto_pc_to_auto_us_df_ARLEN),
        .s_axi_arlock(auto_pc_to_auto_us_df_ARLOCK),
        .s_axi_arprot(auto_pc_to_auto_us_df_ARPROT),
        .s_axi_arqos(auto_pc_to_auto_us_df_ARQOS),
        .s_axi_arready(auto_pc_to_auto_us_df_ARREADY),
        .s_axi_arsize(auto_pc_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(auto_pc_to_auto_us_df_ARVALID),
        .s_axi_awaddr(auto_pc_to_auto_us_df_AWADDR),
        .s_axi_awburst(auto_pc_to_auto_us_df_AWBURST),
        .s_axi_awcache(auto_pc_to_auto_us_df_AWCACHE),
        .s_axi_awid(auto_pc_to_auto_us_df_AWID),
        .s_axi_awlen(auto_pc_to_auto_us_df_AWLEN),
        .s_axi_awlock(auto_pc_to_auto_us_df_AWLOCK),
        .s_axi_awprot(auto_pc_to_auto_us_df_AWPROT),
        .s_axi_awqos(auto_pc_to_auto_us_df_AWQOS),
        .s_axi_awready(auto_pc_to_auto_us_df_AWREADY),
        .s_axi_awsize(auto_pc_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(auto_pc_to_auto_us_df_AWVALID),
        .s_axi_bid(auto_pc_to_auto_us_df_BID),
        .s_axi_bready(auto_pc_to_auto_us_df_BREADY),
        .s_axi_bresp(auto_pc_to_auto_us_df_BRESP),
        .s_axi_bvalid(auto_pc_to_auto_us_df_BVALID),
        .s_axi_rdata(auto_pc_to_auto_us_df_RDATA),
        .s_axi_rid(auto_pc_to_auto_us_df_RID),
        .s_axi_rlast(auto_pc_to_auto_us_df_RLAST),
        .s_axi_rready(auto_pc_to_auto_us_df_RREADY),
        .s_axi_rresp(auto_pc_to_auto_us_df_RRESP),
        .s_axi_rvalid(auto_pc_to_auto_us_df_RVALID),
        .s_axi_wdata(auto_pc_to_auto_us_df_WDATA),
        .s_axi_wlast(auto_pc_to_auto_us_df_WLAST),
        .s_axi_wready(auto_pc_to_auto_us_df_WREADY),
        .s_axi_wstrb(auto_pc_to_auto_us_df_WSTRB),
        .s_axi_wvalid(auto_pc_to_auto_us_df_WVALID));
zed_s00_regslice_1 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_pc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_pc_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_pc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_pc_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_pc_BID),
        .m_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_pc_RID),
        .m_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_pc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module zed
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
    FIXED_IO_ps_srstb);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;

  wire GND_1;
  wire VCC_1;
  wire [12:0]axi_interconnect_M_AXI_GP0_M00_AXI_ARADDR;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_ARREADY;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_ARVALID;
  wire [12:0]axi_interconnect_M_AXI_GP0_M00_AXI_AWADDR;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_AWREADY;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_AWVALID;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_M_AXI_GP0_M00_AXI_BRESP;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_M_AXI_GP0_M00_AXI_RDATA;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_M_AXI_GP0_M00_AXI_RRESP;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_M_AXI_GP0_M00_AXI_WDATA;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_M_AXI_GP0_M00_AXI_WSTRB;
  wire axi_interconnect_M_AXI_GP0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_S_AXI_HP0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_S_AXI_HP0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_S_AXI_HP0_M00_AXI_ARCACHE;
  wire [3:0]axi_interconnect_S_AXI_HP0_M00_AXI_ARLEN;
  wire [1:0]axi_interconnect_S_AXI_HP0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_S_AXI_HP0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_S_AXI_HP0_M00_AXI_ARQOS;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_S_AXI_HP0_M00_AXI_ARSIZE;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_S_AXI_HP0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_S_AXI_HP0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_S_AXI_HP0_M00_AXI_AWCACHE;
  wire [3:0]axi_interconnect_S_AXI_HP0_M00_AXI_AWLEN;
  wire [1:0]axi_interconnect_S_AXI_HP0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_S_AXI_HP0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_S_AXI_HP0_M00_AXI_AWQOS;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_S_AXI_HP0_M00_AXI_AWSIZE;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_AWVALID;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_S_AXI_HP0_M00_AXI_BRESP;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_S_AXI_HP0_M00_AXI_RDATA;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_RLAST;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_S_AXI_HP0_M00_AXI_RRESP;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_S_AXI_HP0_M00_AXI_WDATA;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_WLAST;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_S_AXI_HP0_M00_AXI_WSTRB;
  wire axi_interconnect_S_AXI_HP0_M00_AXI_WVALID;
  wire clkid0;
  wire clkid1;
  wire clkid2;
  wire clkid3;
  wire [31:0]correlation_accel_v1_0_ap_return;
  wire correlation_accel_v1_0_if_AP_CTRL_done;
  wire correlation_accel_v1_0_if_AP_CTRL_idle;
  wire correlation_accel_v1_0_if_AP_CTRL_ready;
  wire correlation_accel_v1_0_if_AP_CTRL_start;
  wire [31:0]correlation_accel_v1_0_if_ap_iscalar_0_dout;
  wire [31:0]correlation_accel_v1_0_if_ap_iscalar_1_dout;
  wire [31:0]correlation_accel_v1_0_if_ap_iscalar_2_dout;
  wire [31:0]correlation_accel_v1_0_if_ap_iscalar_3_dout;
  wire correlation_accel_v1_0_if_aresetn;
  wire [31:0]correlation_accel_v1_0_m_axi_gmem32_ARADDR;
  wire [1:0]correlation_accel_v1_0_m_axi_gmem32_ARBURST;
  wire [3:0]correlation_accel_v1_0_m_axi_gmem32_ARCACHE;
  wire [0:0]correlation_accel_v1_0_m_axi_gmem32_ARID;
  wire [7:0]correlation_accel_v1_0_m_axi_gmem32_ARLEN;
  wire [1:0]correlation_accel_v1_0_m_axi_gmem32_ARLOCK;
  wire [2:0]correlation_accel_v1_0_m_axi_gmem32_ARPROT;
  wire [3:0]correlation_accel_v1_0_m_axi_gmem32_ARQOS;
  wire correlation_accel_v1_0_m_axi_gmem32_ARREADY;
  wire [3:0]correlation_accel_v1_0_m_axi_gmem32_ARREGION;
  wire [2:0]correlation_accel_v1_0_m_axi_gmem32_ARSIZE;
  wire correlation_accel_v1_0_m_axi_gmem32_ARVALID;
  wire [31:0]correlation_accel_v1_0_m_axi_gmem32_AWADDR;
  wire [1:0]correlation_accel_v1_0_m_axi_gmem32_AWBURST;
  wire [3:0]correlation_accel_v1_0_m_axi_gmem32_AWCACHE;
  wire [0:0]correlation_accel_v1_0_m_axi_gmem32_AWID;
  wire [7:0]correlation_accel_v1_0_m_axi_gmem32_AWLEN;
  wire [1:0]correlation_accel_v1_0_m_axi_gmem32_AWLOCK;
  wire [2:0]correlation_accel_v1_0_m_axi_gmem32_AWPROT;
  wire [3:0]correlation_accel_v1_0_m_axi_gmem32_AWQOS;
  wire correlation_accel_v1_0_m_axi_gmem32_AWREADY;
  wire [3:0]correlation_accel_v1_0_m_axi_gmem32_AWREGION;
  wire [2:0]correlation_accel_v1_0_m_axi_gmem32_AWSIZE;
  wire correlation_accel_v1_0_m_axi_gmem32_AWVALID;
  wire [0:0]correlation_accel_v1_0_m_axi_gmem32_BID;
  wire correlation_accel_v1_0_m_axi_gmem32_BREADY;
  wire [1:0]correlation_accel_v1_0_m_axi_gmem32_BRESP;
  wire correlation_accel_v1_0_m_axi_gmem32_BVALID;
  wire [31:0]correlation_accel_v1_0_m_axi_gmem32_RDATA;
  wire [0:0]correlation_accel_v1_0_m_axi_gmem32_RID;
  wire correlation_accel_v1_0_m_axi_gmem32_RLAST;
  wire correlation_accel_v1_0_m_axi_gmem32_RREADY;
  wire [1:0]correlation_accel_v1_0_m_axi_gmem32_RRESP;
  wire correlation_accel_v1_0_m_axi_gmem32_RVALID;
  wire [31:0]correlation_accel_v1_0_m_axi_gmem32_WDATA;
  wire correlation_accel_v1_0_m_axi_gmem32_WLAST;
  wire correlation_accel_v1_0_m_axi_gmem32_WREADY;
  wire [3:0]correlation_accel_v1_0_m_axi_gmem32_WSTRB;
  wire correlation_accel_v1_0_m_axi_gmem32_WVALID;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [31:0]ps7_M_AXI_GP0_ARADDR;
  wire [1:0]ps7_M_AXI_GP0_ARBURST;
  wire [3:0]ps7_M_AXI_GP0_ARCACHE;
  wire [11:0]ps7_M_AXI_GP0_ARID;
  wire [3:0]ps7_M_AXI_GP0_ARLEN;
  wire [1:0]ps7_M_AXI_GP0_ARLOCK;
  wire [2:0]ps7_M_AXI_GP0_ARPROT;
  wire [3:0]ps7_M_AXI_GP0_ARQOS;
  wire ps7_M_AXI_GP0_ARREADY;
  wire [2:0]ps7_M_AXI_GP0_ARSIZE;
  wire ps7_M_AXI_GP0_ARVALID;
  wire [31:0]ps7_M_AXI_GP0_AWADDR;
  wire [1:0]ps7_M_AXI_GP0_AWBURST;
  wire [3:0]ps7_M_AXI_GP0_AWCACHE;
  wire [11:0]ps7_M_AXI_GP0_AWID;
  wire [3:0]ps7_M_AXI_GP0_AWLEN;
  wire [1:0]ps7_M_AXI_GP0_AWLOCK;
  wire [2:0]ps7_M_AXI_GP0_AWPROT;
  wire [3:0]ps7_M_AXI_GP0_AWQOS;
  wire ps7_M_AXI_GP0_AWREADY;
  wire [2:0]ps7_M_AXI_GP0_AWSIZE;
  wire ps7_M_AXI_GP0_AWVALID;
  wire [11:0]ps7_M_AXI_GP0_BID;
  wire ps7_M_AXI_GP0_BREADY;
  wire [1:0]ps7_M_AXI_GP0_BRESP;
  wire ps7_M_AXI_GP0_BVALID;
  wire [31:0]ps7_M_AXI_GP0_RDATA;
  wire [11:0]ps7_M_AXI_GP0_RID;
  wire ps7_M_AXI_GP0_RLAST;
  wire ps7_M_AXI_GP0_RREADY;
  wire [1:0]ps7_M_AXI_GP0_RRESP;
  wire ps7_M_AXI_GP0_RVALID;
  wire [31:0]ps7_M_AXI_GP0_WDATA;
  wire [11:0]ps7_M_AXI_GP0_WID;
  wire ps7_M_AXI_GP0_WLAST;
  wire ps7_M_AXI_GP0_WREADY;
  wire [3:0]ps7_M_AXI_GP0_WSTRB;
  wire ps7_M_AXI_GP0_WVALID;
  wire [14:0]ps7_ddr_ADDR;
  wire [2:0]ps7_ddr_BA;
  wire ps7_ddr_CAS_N;
  wire ps7_ddr_CKE;
  wire ps7_ddr_CK_N;
  wire ps7_ddr_CK_P;
  wire ps7_ddr_CS_N;
  wire [3:0]ps7_ddr_DM;
  wire [31:0]ps7_ddr_DQ;
  wire [3:0]ps7_ddr_DQS_N;
  wire [3:0]ps7_ddr_DQS_P;
  wire ps7_ddr_ODT;
  wire ps7_ddr_RAS_N;
  wire ps7_ddr_RESET_N;
  wire ps7_ddr_WE_N;
  wire ps7_fclk_reset0_n;
  wire ps7_fixed_io_DDR_VRN;
  wire ps7_fixed_io_DDR_VRP;
  wire [53:0]ps7_fixed_io_MIO;
  wire ps7_fixed_io_PS_CLK;
  wire ps7_fixed_io_PS_PORB;
  wire ps7_fixed_io_PS_SRSTB;
  wire [0:0]ps7_irq_const_dout;
  wire [0:0]xlconcat_1_dout;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
zed_axi_interconnect_M_AXI_GP0_0 axi_interconnect_M_AXI_GP0
       (.ACLK(clkid1),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(clkid1),
        .M00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_M_AXI_GP0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_M_AXI_GP0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_M_AXI_GP0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_M_AXI_GP0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_M_AXI_GP0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_M_AXI_GP0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_M_AXI_GP0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_M_AXI_GP0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_M_AXI_GP0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_M_AXI_GP0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_M_AXI_GP0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_M_AXI_GP0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_M_AXI_GP0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_M_AXI_GP0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_M_AXI_GP0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_M_AXI_GP0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_M_AXI_GP0_M00_AXI_WVALID),
        .S00_ACLK(clkid1),
        .S00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S00_AXI_araddr(ps7_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(ps7_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(ps7_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(ps7_M_AXI_GP0_ARID),
        .S00_AXI_arlen(ps7_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(ps7_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(ps7_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(ps7_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(ps7_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(ps7_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(ps7_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(ps7_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(ps7_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(ps7_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(ps7_M_AXI_GP0_AWID),
        .S00_AXI_awlen(ps7_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(ps7_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(ps7_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(ps7_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(ps7_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(ps7_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(ps7_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(ps7_M_AXI_GP0_BID),
        .S00_AXI_bready(ps7_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(ps7_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(ps7_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(ps7_M_AXI_GP0_RDATA),
        .S00_AXI_rid(ps7_M_AXI_GP0_RID),
        .S00_AXI_rlast(ps7_M_AXI_GP0_RLAST),
        .S00_AXI_rready(ps7_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(ps7_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(ps7_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(ps7_M_AXI_GP0_WDATA),
        .S00_AXI_wid(ps7_M_AXI_GP0_WID),
        .S00_AXI_wlast(ps7_M_AXI_GP0_WLAST),
        .S00_AXI_wready(ps7_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(ps7_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(ps7_M_AXI_GP0_WVALID));
zed_axi_interconnect_S_AXI_HP0_0 axi_interconnect_S_AXI_HP0
       (.ACLK(clkid1),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(clkid1),
        .M00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_S_AXI_HP0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_S_AXI_HP0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_S_AXI_HP0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_S_AXI_HP0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_S_AXI_HP0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_S_AXI_HP0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_S_AXI_HP0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_S_AXI_HP0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_S_AXI_HP0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_S_AXI_HP0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_S_AXI_HP0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_S_AXI_HP0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_S_AXI_HP0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_S_AXI_HP0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_S_AXI_HP0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_S_AXI_HP0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_S_AXI_HP0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_S_AXI_HP0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_S_AXI_HP0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_S_AXI_HP0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_S_AXI_HP0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_S_AXI_HP0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_S_AXI_HP0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_S_AXI_HP0_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_S_AXI_HP0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_S_AXI_HP0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_S_AXI_HP0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_S_AXI_HP0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_S_AXI_HP0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_S_AXI_HP0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_S_AXI_HP0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_S_AXI_HP0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_S_AXI_HP0_M00_AXI_WVALID),
        .S00_ACLK(clkid1),
        .S00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S00_AXI_araddr(correlation_accel_v1_0_m_axi_gmem32_ARADDR),
        .S00_AXI_arburst(correlation_accel_v1_0_m_axi_gmem32_ARBURST),
        .S00_AXI_arcache(correlation_accel_v1_0_m_axi_gmem32_ARCACHE),
        .S00_AXI_arid(correlation_accel_v1_0_m_axi_gmem32_ARID),
        .S00_AXI_arlen(correlation_accel_v1_0_m_axi_gmem32_ARLEN),
        .S00_AXI_arlock(correlation_accel_v1_0_m_axi_gmem32_ARLOCK[0]),
        .S00_AXI_arprot(correlation_accel_v1_0_m_axi_gmem32_ARPROT),
        .S00_AXI_arqos(correlation_accel_v1_0_m_axi_gmem32_ARQOS),
        .S00_AXI_arready(correlation_accel_v1_0_m_axi_gmem32_ARREADY),
        .S00_AXI_arregion(correlation_accel_v1_0_m_axi_gmem32_ARREGION),
        .S00_AXI_arsize(correlation_accel_v1_0_m_axi_gmem32_ARSIZE),
        .S00_AXI_arvalid(correlation_accel_v1_0_m_axi_gmem32_ARVALID),
        .S00_AXI_awaddr(correlation_accel_v1_0_m_axi_gmem32_AWADDR),
        .S00_AXI_awburst(correlation_accel_v1_0_m_axi_gmem32_AWBURST),
        .S00_AXI_awcache(correlation_accel_v1_0_m_axi_gmem32_AWCACHE),
        .S00_AXI_awid(correlation_accel_v1_0_m_axi_gmem32_AWID),
        .S00_AXI_awlen(correlation_accel_v1_0_m_axi_gmem32_AWLEN),
        .S00_AXI_awlock(correlation_accel_v1_0_m_axi_gmem32_AWLOCK[0]),
        .S00_AXI_awprot(correlation_accel_v1_0_m_axi_gmem32_AWPROT),
        .S00_AXI_awqos(correlation_accel_v1_0_m_axi_gmem32_AWQOS),
        .S00_AXI_awready(correlation_accel_v1_0_m_axi_gmem32_AWREADY),
        .S00_AXI_awregion(correlation_accel_v1_0_m_axi_gmem32_AWREGION),
        .S00_AXI_awsize(correlation_accel_v1_0_m_axi_gmem32_AWSIZE),
        .S00_AXI_awvalid(correlation_accel_v1_0_m_axi_gmem32_AWVALID),
        .S00_AXI_bid(correlation_accel_v1_0_m_axi_gmem32_BID),
        .S00_AXI_bready(correlation_accel_v1_0_m_axi_gmem32_BREADY),
        .S00_AXI_bresp(correlation_accel_v1_0_m_axi_gmem32_BRESP),
        .S00_AXI_bvalid(correlation_accel_v1_0_m_axi_gmem32_BVALID),
        .S00_AXI_rdata(correlation_accel_v1_0_m_axi_gmem32_RDATA),
        .S00_AXI_rid(correlation_accel_v1_0_m_axi_gmem32_RID),
        .S00_AXI_rlast(correlation_accel_v1_0_m_axi_gmem32_RLAST),
        .S00_AXI_rready(correlation_accel_v1_0_m_axi_gmem32_RREADY),
        .S00_AXI_rresp(correlation_accel_v1_0_m_axi_gmem32_RRESP),
        .S00_AXI_rvalid(correlation_accel_v1_0_m_axi_gmem32_RVALID),
        .S00_AXI_wdata(correlation_accel_v1_0_m_axi_gmem32_WDATA),
        .S00_AXI_wlast(correlation_accel_v1_0_m_axi_gmem32_WLAST),
        .S00_AXI_wready(correlation_accel_v1_0_m_axi_gmem32_WREADY),
        .S00_AXI_wstrb(correlation_accel_v1_0_m_axi_gmem32_WSTRB),
        .S00_AXI_wvalid(correlation_accel_v1_0_m_axi_gmem32_WVALID));
zed_correlation_accel_v1_0_0 correlation_accel_v1_0
       (.ap_clk(clkid1),
        .ap_done(correlation_accel_v1_0_if_AP_CTRL_done),
        .ap_idle(correlation_accel_v1_0_if_AP_CTRL_idle),
        .ap_ready(correlation_accel_v1_0_if_AP_CTRL_ready),
        .ap_return(correlation_accel_v1_0_ap_return),
        .ap_rst_n(correlation_accel_v1_0_if_aresetn),
        .ap_start(correlation_accel_v1_0_if_AP_CTRL_start),
        .in_indices(correlation_accel_v1_0_if_ap_iscalar_2_dout),
        .m_axi_gmem32_ARADDR(correlation_accel_v1_0_m_axi_gmem32_ARADDR),
        .m_axi_gmem32_ARBURST(correlation_accel_v1_0_m_axi_gmem32_ARBURST),
        .m_axi_gmem32_ARCACHE(correlation_accel_v1_0_m_axi_gmem32_ARCACHE),
        .m_axi_gmem32_ARID(correlation_accel_v1_0_m_axi_gmem32_ARID),
        .m_axi_gmem32_ARLEN(correlation_accel_v1_0_m_axi_gmem32_ARLEN),
        .m_axi_gmem32_ARLOCK(correlation_accel_v1_0_m_axi_gmem32_ARLOCK),
        .m_axi_gmem32_ARPROT(correlation_accel_v1_0_m_axi_gmem32_ARPROT),
        .m_axi_gmem32_ARQOS(correlation_accel_v1_0_m_axi_gmem32_ARQOS),
        .m_axi_gmem32_ARREADY(correlation_accel_v1_0_m_axi_gmem32_ARREADY),
        .m_axi_gmem32_ARREGION(correlation_accel_v1_0_m_axi_gmem32_ARREGION),
        .m_axi_gmem32_ARSIZE(correlation_accel_v1_0_m_axi_gmem32_ARSIZE),
        .m_axi_gmem32_ARVALID(correlation_accel_v1_0_m_axi_gmem32_ARVALID),
        .m_axi_gmem32_AWADDR(correlation_accel_v1_0_m_axi_gmem32_AWADDR),
        .m_axi_gmem32_AWBURST(correlation_accel_v1_0_m_axi_gmem32_AWBURST),
        .m_axi_gmem32_AWCACHE(correlation_accel_v1_0_m_axi_gmem32_AWCACHE),
        .m_axi_gmem32_AWID(correlation_accel_v1_0_m_axi_gmem32_AWID),
        .m_axi_gmem32_AWLEN(correlation_accel_v1_0_m_axi_gmem32_AWLEN),
        .m_axi_gmem32_AWLOCK(correlation_accel_v1_0_m_axi_gmem32_AWLOCK),
        .m_axi_gmem32_AWPROT(correlation_accel_v1_0_m_axi_gmem32_AWPROT),
        .m_axi_gmem32_AWQOS(correlation_accel_v1_0_m_axi_gmem32_AWQOS),
        .m_axi_gmem32_AWREADY(correlation_accel_v1_0_m_axi_gmem32_AWREADY),
        .m_axi_gmem32_AWREGION(correlation_accel_v1_0_m_axi_gmem32_AWREGION),
        .m_axi_gmem32_AWSIZE(correlation_accel_v1_0_m_axi_gmem32_AWSIZE),
        .m_axi_gmem32_AWVALID(correlation_accel_v1_0_m_axi_gmem32_AWVALID),
        .m_axi_gmem32_BID(correlation_accel_v1_0_m_axi_gmem32_BID),
        .m_axi_gmem32_BREADY(correlation_accel_v1_0_m_axi_gmem32_BREADY),
        .m_axi_gmem32_BRESP(correlation_accel_v1_0_m_axi_gmem32_BRESP),
        .m_axi_gmem32_BVALID(correlation_accel_v1_0_m_axi_gmem32_BVALID),
        .m_axi_gmem32_RDATA(correlation_accel_v1_0_m_axi_gmem32_RDATA),
        .m_axi_gmem32_RID(correlation_accel_v1_0_m_axi_gmem32_RID),
        .m_axi_gmem32_RLAST(correlation_accel_v1_0_m_axi_gmem32_RLAST),
        .m_axi_gmem32_RREADY(correlation_accel_v1_0_m_axi_gmem32_RREADY),
        .m_axi_gmem32_RRESP(correlation_accel_v1_0_m_axi_gmem32_RRESP),
        .m_axi_gmem32_RVALID(correlation_accel_v1_0_m_axi_gmem32_RVALID),
        .m_axi_gmem32_WDATA(correlation_accel_v1_0_m_axi_gmem32_WDATA),
        .m_axi_gmem32_WLAST(correlation_accel_v1_0_m_axi_gmem32_WLAST),
        .m_axi_gmem32_WREADY(correlation_accel_v1_0_m_axi_gmem32_WREADY),
        .m_axi_gmem32_WSTRB(correlation_accel_v1_0_m_axi_gmem32_WSTRB),
        .m_axi_gmem32_WVALID(correlation_accel_v1_0_m_axi_gmem32_WVALID),
        .number_of_days(correlation_accel_v1_0_if_ap_iscalar_0_dout),
        .number_of_indices(correlation_accel_v1_0_if_ap_iscalar_1_dout),
        .out_correlation(correlation_accel_v1_0_if_ap_iscalar_3_dout));
zed_correlation_accel_v1_0_if_0 correlation_accel_v1_0_if
       (.aclk(clkid1),
        .ap_done(correlation_accel_v1_0_if_AP_CTRL_done),
        .ap_idle(correlation_accel_v1_0_if_AP_CTRL_idle),
        .ap_iscalar_0_dout(correlation_accel_v1_0_if_ap_iscalar_0_dout),
        .ap_iscalar_1_dout(correlation_accel_v1_0_if_ap_iscalar_1_dout),
        .ap_iscalar_2_dout(correlation_accel_v1_0_if_ap_iscalar_2_dout),
        .ap_iscalar_3_dout(correlation_accel_v1_0_if_ap_iscalar_3_dout),
        .ap_oscalar_0_din(correlation_accel_v1_0_ap_return),
        .ap_ready(correlation_accel_v1_0_if_AP_CTRL_ready),
        .ap_start(correlation_accel_v1_0_if_AP_CTRL_start),
        .aresetn(correlation_accel_v1_0_if_aresetn),
        .s_axi_aclk(clkid1),
        .s_axi_araddr(axi_interconnect_M_AXI_GP0_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_M_AXI_GP0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_M_AXI_GP0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_M_AXI_GP0_M00_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_M_AXI_GP0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_M_AXI_GP0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_M_AXI_GP0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_M_AXI_GP0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_M_AXI_GP0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_M_AXI_GP0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_M_AXI_GP0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_M_AXI_GP0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_M_AXI_GP0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_M_AXI_GP0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_M_AXI_GP0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_M_AXI_GP0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_M_AXI_GP0_M00_AXI_WVALID));
zed_proc_sys_reset_0_3 proc_sys_reset_0
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(ps7_fclk_reset0_n),
        .mb_debug_sys_rst(GND_1),
        .slowest_sync_clk(clkid0));
zed_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(ps7_fclk_reset0_n),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(GND_1),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clkid1));
zed_proc_sys_reset_2_1 proc_sys_reset_2
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(ps7_fclk_reset0_n),
        .mb_debug_sys_rst(GND_1),
        .slowest_sync_clk(clkid2));
zed_proc_sys_reset_3_2 proc_sys_reset_3
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(ps7_fclk_reset0_n),
        .mb_debug_sys_rst(GND_1),
        .slowest_sync_clk(clkid3));
zed_ps7_0 ps7
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(clkid0),
        .FCLK_CLK1(clkid1),
        .FCLK_CLK2(clkid2),
        .FCLK_CLK3(clkid3),
        .FCLK_RESET0_N(ps7_fclk_reset0_n),
        .IRQ_F2P(xlconcat_1_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(clkid1),
        .M_AXI_GP0_ARADDR(ps7_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(ps7_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(ps7_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(ps7_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(ps7_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(ps7_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(ps7_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(ps7_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(ps7_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(ps7_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(ps7_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(ps7_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(ps7_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(ps7_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(ps7_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(ps7_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(ps7_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(ps7_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(ps7_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(ps7_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(ps7_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(ps7_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(ps7_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(ps7_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(ps7_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(ps7_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(ps7_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(ps7_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(ps7_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(ps7_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(ps7_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(ps7_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(ps7_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(ps7_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(ps7_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(ps7_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(ps7_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(ps7_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(clkid1),
        .S_AXI_HP0_ARADDR(axi_interconnect_S_AXI_HP0_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_interconnect_S_AXI_HP0_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_interconnect_S_AXI_HP0_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP0_ARLEN(axi_interconnect_S_AXI_HP0_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_interconnect_S_AXI_HP0_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_interconnect_S_AXI_HP0_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_interconnect_S_AXI_HP0_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_interconnect_S_AXI_HP0_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_interconnect_S_AXI_HP0_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_interconnect_S_AXI_HP0_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_interconnect_S_AXI_HP0_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_interconnect_S_AXI_HP0_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_interconnect_S_AXI_HP0_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP0_AWLEN(axi_interconnect_S_AXI_HP0_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_interconnect_S_AXI_HP0_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_interconnect_S_AXI_HP0_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_interconnect_S_AXI_HP0_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_interconnect_S_AXI_HP0_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_interconnect_S_AXI_HP0_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_interconnect_S_AXI_HP0_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(axi_interconnect_S_AXI_HP0_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_interconnect_S_AXI_HP0_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_interconnect_S_AXI_HP0_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_interconnect_S_AXI_HP0_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(GND_1),
        .S_AXI_HP0_RLAST(axi_interconnect_S_AXI_HP0_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_interconnect_S_AXI_HP0_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_interconnect_S_AXI_HP0_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_interconnect_S_AXI_HP0_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_interconnect_S_AXI_HP0_M00_AXI_WDATA),
        .S_AXI_HP0_WID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP0_WLAST(axi_interconnect_S_AXI_HP0_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_interconnect_S_AXI_HP0_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(GND_1),
        .S_AXI_HP0_WSTRB(axi_interconnect_S_AXI_HP0_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_interconnect_S_AXI_HP0_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(GND_1));
zed_ps7_irq_const_0 ps7_irq_const
       (.dout(ps7_irq_const_dout));
zed_xlconcat_0 xlconcat
       (.In0(ps7_irq_const_dout),
        .dout(xlconcat_1_dout));
endmodule

module zed_axi_interconnect_M_AXI_GP0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [12:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [12:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_interconnect_M_AXI_GP0_ACLK_net;
  wire [0:0]axi_interconnect_M_AXI_GP0_ARESETN_net;
  wire [31:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARQOS;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWQOS;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_BID;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_BRESP;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_RID;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_RLAST;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_RRESP;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_WID;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_WLAST;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_M_AXI_GP0_to_s00_couplers_WSTRB;
  wire axi_interconnect_M_AXI_GP0_to_s00_couplers_WVALID;
  wire [12:0]s00_couplers_to_axi_interconnect_M_AXI_GP0_ARADDR;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_ARREADY;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_ARVALID;
  wire [12:0]s00_couplers_to_axi_interconnect_M_AXI_GP0_AWADDR;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_AWREADY;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_AWVALID;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_M_AXI_GP0_BRESP;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_M_AXI_GP0_RDATA;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_M_AXI_GP0_RRESP;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_M_AXI_GP0_WDATA;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_M_AXI_GP0_WSTRB;
  wire s00_couplers_to_axi_interconnect_M_AXI_GP0_WVALID;

  assign M00_AXI_araddr[12:0] = s00_couplers_to_axi_interconnect_M_AXI_GP0_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_M_AXI_GP0_ARVALID;
  assign M00_AXI_awaddr[12:0] = s00_couplers_to_axi_interconnect_M_AXI_GP0_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_M_AXI_GP0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_M_AXI_GP0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_M_AXI_GP0_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_M_AXI_GP0_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_M_AXI_GP0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_M_AXI_GP0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_interconnect_M_AXI_GP0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_M_AXI_GP0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_M_AXI_GP0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_M_AXI_GP0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_M_AXI_GP0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_M_AXI_GP0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_M_AXI_GP0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_M_AXI_GP0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_M_AXI_GP0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_M_AXI_GP0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_M_AXI_GP0_to_s00_couplers_WREADY;
  assign axi_interconnect_M_AXI_GP0_ACLK_net = M00_ACLK;
  assign axi_interconnect_M_AXI_GP0_ARESETN_net = M00_ARESETN[0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_M_AXI_GP0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_M_AXI_GP0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_M_AXI_GP0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_M_AXI_GP0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_M_AXI_GP0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_M_AXI_GP0_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_M_AXI_GP0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_M_AXI_GP0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_M_AXI_GP0_WREADY = M00_AXI_wready;
s00_couplers_imp_15ENQ9K s00_couplers
       (.M_ACLK(axi_interconnect_M_AXI_GP0_ACLK_net),
        .M_ARESETN(axi_interconnect_M_AXI_GP0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_M_AXI_GP0_ARADDR),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_M_AXI_GP0_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_M_AXI_GP0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_M_AXI_GP0_AWADDR),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_M_AXI_GP0_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_M_AXI_GP0_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_M_AXI_GP0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_M_AXI_GP0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_M_AXI_GP0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_M_AXI_GP0_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_M_AXI_GP0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_M_AXI_GP0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_M_AXI_GP0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_M_AXI_GP0_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_M_AXI_GP0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_M_AXI_GP0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_M_AXI_GP0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_M_AXI_GP0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_M_AXI_GP0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_M_AXI_GP0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_M_AXI_GP0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_M_AXI_GP0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_M_AXI_GP0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_M_AXI_GP0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_M_AXI_GP0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_M_AXI_GP0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_M_AXI_GP0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_M_AXI_GP0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_M_AXI_GP0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_M_AXI_GP0_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_M_AXI_GP0_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_M_AXI_GP0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_M_AXI_GP0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_M_AXI_GP0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_M_AXI_GP0_to_s00_couplers_WVALID));
endmodule

module zed_axi_interconnect_S_AXI_HP0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_interconnect_S_AXI_HP0_ACLK_net;
  wire [0:0]axi_interconnect_S_AXI_HP0_ARESETN_net;
  wire [31:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARCACHE;
  wire [0:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARQOS;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWCACHE;
  wire [0:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWQOS;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_BID;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_BRESP;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_RID;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_RLAST;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_RRESP;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_WDATA;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_WLAST;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_S_AXI_HP0_to_s00_couplers_WSTRB;
  wire axi_interconnect_S_AXI_HP0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_ARCACHE;
  wire [3:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_ARLEN;
  wire [1:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_ARQOS;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_ARSIZE;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_AWCACHE;
  wire [3:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_AWLEN;
  wire [1:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_AWQOS;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_AWSIZE;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_AWVALID;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_BRESP;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_BVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_RDATA;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_RLAST;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_RRESP;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_RVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_WDATA;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_WLAST;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_WREADY;
  wire [7:0]s00_couplers_to_axi_interconnect_S_AXI_HP0_WSTRB;
  wire s00_couplers_to_axi_interconnect_S_AXI_HP0_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARCACHE;
  assign M00_AXI_arlen[3:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARLEN;
  assign M00_AXI_arlock[1:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_S_AXI_HP0_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWCACHE;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_S_AXI_HP0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_S_AXI_HP0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_S_AXI_HP0_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_S_AXI_HP0_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_interconnect_S_AXI_HP0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_S_AXI_HP0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_interconnect_S_AXI_HP0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_S_AXI_HP0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_interconnect_S_AXI_HP0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_S_AXI_HP0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_S_AXI_HP0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_S_AXI_HP0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = axi_interconnect_S_AXI_HP0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_S_AXI_HP0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_S_AXI_HP0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_S_AXI_HP0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_S_AXI_HP0_to_s00_couplers_WREADY;
  assign axi_interconnect_S_AXI_HP0_ACLK_net = M00_ACLK;
  assign axi_interconnect_S_AXI_HP0_ARESETN_net = M00_ARESETN[0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_S_AXI_HP0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_S_AXI_HP0_WREADY = M00_AXI_wready;
s00_couplers_imp_1JVMGI1 s00_couplers
       (.M_ACLK(axi_interconnect_S_AXI_HP0_ACLK_net),
        .M_ARESETN(axi_interconnect_S_AXI_HP0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_S_AXI_HP0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_S_AXI_HP0_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_S_AXI_HP0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_S_AXI_HP0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_S_AXI_HP0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_S_AXI_HP0_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_S_AXI_HP0_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_S_AXI_HP0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_S_AXI_HP0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_S_AXI_HP0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_S_AXI_HP0_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_S_AXI_HP0_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_S_AXI_HP0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_S_AXI_HP0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_S_AXI_HP0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_S_AXI_HP0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_S_AXI_HP0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_S_AXI_HP0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_S_AXI_HP0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_S_AXI_HP0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_S_AXI_HP0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_S_AXI_HP0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_S_AXI_HP0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_S_AXI_HP0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_S_AXI_HP0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_S_AXI_HP0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_S_AXI_HP0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_S_AXI_HP0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_S_AXI_HP0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_S_AXI_HP0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_S_AXI_HP0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_S_AXI_HP0_to_s00_couplers_WVALID));
endmodule
