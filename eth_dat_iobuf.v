// megafunction wizard: %ALTIOBUF%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altiobuf_in 

// ============================================================
// File Name: eth_dat_iobuf.v
// Megafunction Name(s):
// 			altiobuf_in
//
// Simulation Library Files(s):
// 			
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 18.1.0 Build 625 09/12/2018 SJ Lite Edition
// ************************************************************


//Copyright (C) 2018  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details.


//altiobuf_in CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone 10 LP" ENABLE_BUS_HOLD="FALSE" NUMBER_OF_CHANNELS=4 USE_DIFFERENTIAL_MODE="FALSE" USE_DYNAMIC_TERMINATION_CONTROL="FALSE" datain dataout
//VERSION_BEGIN 18.1 cbx_altiobuf_in 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ cbx_stratixiii 2018:09:12:13:04:24:SJ cbx_stratixv 2018:09:12:13:04:24:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = cyclone10lp_io_ibuf 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  eth_dat_iobuf_iobuf_in_98i
	( 
	datain,
	dataout) ;
	input   [3:0]  datain;
	output   [3:0]  dataout;

	wire  [3:0]   wire_ibufa_i;
	wire  [3:0]   wire_ibufa_o;

	cyclone10lp_io_ibuf   ibufa_0
	( 
	.i(wire_ibufa_i[0:0]),
	.o(wire_ibufa_o[0:0])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.ibar(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		ibufa_0.bus_hold = "false",
		ibufa_0.differential_mode = "false",
		ibufa_0.lpm_type = "cyclone10lp_io_ibuf";
	cyclone10lp_io_ibuf   ibufa_1
	( 
	.i(wire_ibufa_i[1:1]),
	.o(wire_ibufa_o[1:1])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.ibar(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		ibufa_1.bus_hold = "false",
		ibufa_1.differential_mode = "false",
		ibufa_1.lpm_type = "cyclone10lp_io_ibuf";
	cyclone10lp_io_ibuf   ibufa_2
	( 
	.i(wire_ibufa_i[2:2]),
	.o(wire_ibufa_o[2:2])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.ibar(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		ibufa_2.bus_hold = "false",
		ibufa_2.differential_mode = "false",
		ibufa_2.lpm_type = "cyclone10lp_io_ibuf";
	cyclone10lp_io_ibuf   ibufa_3
	( 
	.i(wire_ibufa_i[3:3]),
	.o(wire_ibufa_o[3:3])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.ibar(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		ibufa_3.bus_hold = "false",
		ibufa_3.differential_mode = "false",
		ibufa_3.lpm_type = "cyclone10lp_io_ibuf";
	assign
		wire_ibufa_i = datain;
	assign
		dataout = wire_ibufa_o;
endmodule //eth_dat_iobuf_iobuf_in_98i
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module eth_dat_iobuf (
	datain,
	dataout);

	input	[3:0]  datain;
	output	[3:0]  dataout;

	wire [3:0] sub_wire0;
	wire [3:0] dataout = sub_wire0[3:0];

	eth_dat_iobuf_iobuf_in_98i	eth_dat_iobuf_iobuf_in_98i_component (
				.datain (datain),
				.dataout (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone 10 LP"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone 10 LP"
// Retrieval info: CONSTANT: enable_bus_hold STRING "FALSE"
// Retrieval info: CONSTANT: number_of_channels NUMERIC "4"
// Retrieval info: CONSTANT: use_differential_mode STRING "FALSE"
// Retrieval info: CONSTANT: use_dynamic_termination_control STRING "FALSE"
// Retrieval info: USED_PORT: datain 0 0 4 0 INPUT NODEFVAL "datain[3..0]"
// Retrieval info: USED_PORT: dataout 0 0 4 0 OUTPUT NODEFVAL "dataout[3..0]"
// Retrieval info: CONNECT: @datain 0 0 4 0 datain 0 0 4 0
// Retrieval info: CONNECT: dataout 0 0 4 0 @dataout 0 0 4 0
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_dat_iobuf.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_dat_iobuf.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_dat_iobuf.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_dat_iobuf.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_dat_iobuf_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_dat_iobuf_bb.v TRUE
