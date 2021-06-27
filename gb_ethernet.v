module gb_ethernet(
   input    [3:0]CLK_50_IN,
	input		[3:0]KEY,
	inout		PHY_MDIO,
	output	PHY_MDC,
	output	PHY_RST,
	output	PHY_TX_CLK,
	output	PHY_TX_EN,
	output	[3:0]PHY_TXD,
	input		[1:0]PHY_CLK25,
	input		[1:0]PHY_CLK125,
	input		PHY_RX_CLK,
	input		PHY_RX_DV,
	input		[3:0]PHY_RXD,
	input		PHY_INT,
	output   CLK_25,
	output   CLK_250
);

wire PLL_CLK_25_0;
wire PLL_CLK_250_0;
wire PLL_CLK_125_45;
wire PLL_CLK_125_90;

wire PHY_CTL_BUF;
wire RES;
wire PHY_READY;
wire [7:0]PHY_TX_BUF;
wire [4:0]DATA_OUT_H;
wire [4:0]DATA_OUT_L;
wire [4:0]DATA_TO_PHY;
wire [4:0]DATA_TO_PHY_BUF;

wire 	[10:0]IP_RAM_ADDRESS_W;
wire 	[10:0]IP_RAM_ADDRESS_R;
wire 	[7:0]IP_RAM_DATA;
wire 	IP_RAM_WREN;
wire 	[7:0]IP_RAM_Q;


assign CLK_25=PLL_CLK_25_0;
assign CLK_250=PLL_CLK_250_0;

// Transmit
//assign PHY_TXD=DATA_TO_PHY_BUF[3:0];
//assign PHY_TX_EN=DATA_TO_PHY_BUF[4];
//assign DATA_OUT_H[4]=PHY_CTL_BUF;
//assign DATA_OUT_L[4]=PHY_CTL_BUF ^ 1'b0;
//assign PHY_RST=PHY_RES;


// Loopback test
assign PHY_TXD=PHY_RXD;
assign PHY_TX_EN=PHY_RX_DV;
assign PHY_TX_CLK=PHY_RX_CLK;
assign PHY_RST=KEY[0];

	
main_pll pll(
	.inclk0 (CLK_50_IN[3]),
	.c0 (PLL_CLK_25_0),
	.c1 (PLL_CLK_250_0),
	.c2 (PLL_CLK_125_45),
	.c3 (PLL_CLK_125_90),
	.locked (RES)
);

//-------------------------------PHY1 Send-----------------------------------
eth_dat_iobuf tx_buf_h
	( 
	.datain (PHY_TX_BUF[3:0]),
	.dataout (DATA_OUT_H[3:0])
);

eth_dat_iobuf tx_buf_l
	( 
	.datain (PHY_TX_BUF[7:4]),
	.dataout (DATA_OUT_L[3:0])
);

eth_ddo eth_ddio_buf(
	.datain_h (DATA_OUT_H),
	.datain_l (DATA_OUT_L),
	.outclock (PLL_CLK_125_45),
	.dataout (DATA_TO_PHY)
);

eth_obuf eth_o_buf(
	.datain (DATA_TO_PHY),
	.dataout (DATA_TO_PHY_BUF)
	);
	
phy1 phy_snd(
	.clock25_0 (PLL_CLK_25_0),
	.clock250_0 (PLL_CLK_250_0),
	.clock125_90 (PLL_CLK_125_90),
	.rst (KEY[0]),
	.phy1_mdc (PHY_MDC),
	.phy1_mdio (PHY_MDIO),
	.phy1_res (PHY_RES),
	.phy1_int (PHY_INT),
	.phy1_clk_25 (PHY_CLK25),
	//.phy1_tx_clk (PHY_TX_CLK),
	.phy1_rx_clk (PHY_RX_CLK),
	.phy1_ctl (PHY_CTL_BUF),
	.phy1_rx_dv (PHY_RXDV),
	.phy1_tx (PHY_TX_BUF),
	.phy1_rx (PHY_RX),

	.ipmem_address (IP_RAM_ADDRESS_R),
	.ipmem_q (IP_RAM_Q),
	
	.phy_ready (PHY_READY),

	.cpy_ready (~KEY[1])
);

ip_buffer video_pckt(
	.clock (PLL_CLK_250_0),
	.data (IP_RAM_DATA),
	.rdaddress (IP_RAM_ADDRESS_R),
	.wraddress (IP_RAM_ADDRESS_W),
	.wren (IP_RAM_WREN),
	.q (IP_RAM_Q)
);

endmodule