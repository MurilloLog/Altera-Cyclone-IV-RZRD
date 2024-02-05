/* 1 bit multiplexer: 2 inputs, 1 output
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program is designed to learn how to sintetize a one bit multiplexer
 * 2 to 1 module in the FPGA, where:
 * 	(x, y) are 1 bit inputs
 * 	m is 1 bit output
 * 	s is the 1 bit selector
 */

module Multiplexer2to1_1B(x, y, s, m);
	input x, y, s;
	output m;
	
	assign m = (~s & x) | (s & y);
endmodule 