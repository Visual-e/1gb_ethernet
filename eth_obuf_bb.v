// megafunction wizard: %ALTIOBUF%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altiobuf_in 

// ============================================================
// File Name: eth_obuf.v
// Megafunction Name(s):
// 			altiobuf_in
//
// Simulation Library Files(s):
// 			cycloneive
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 18.0.0 Build 614 04/24/2018 SJ Lite Edition
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

module eth_obuf (
	datain,
	dataout)/* synthesis synthesis_clearbox = 1 */;

	input	[4:0]  datain;
	output	[4:0]  dataout;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: CONSTANT: enable_bus_hold STRING "FALSE"
// Retrieval info: CONSTANT: number_of_channels NUMERIC "5"
// Retrieval info: CONSTANT: use_differential_mode STRING "FALSE"
// Retrieval info: CONSTANT: use_dynamic_termination_control STRING "FALSE"
// Retrieval info: USED_PORT: datain 0 0 5 0 INPUT NODEFVAL "datain[4..0]"
// Retrieval info: USED_PORT: dataout 0 0 5 0 OUTPUT NODEFVAL "dataout[4..0]"
// Retrieval info: CONNECT: @datain 0 0 5 0 datain 0 0 5 0
// Retrieval info: CONNECT: dataout 0 0 5 0 @dataout 0 0 5 0
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_obuf.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_obuf.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_obuf.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_obuf.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_obuf_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL eth_obuf_bb.v TRUE
// Retrieval info: LIB_FILE: cycloneive
