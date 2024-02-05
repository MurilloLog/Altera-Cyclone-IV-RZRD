/* 1 bit multiplexer: 4 inputs, 1 output
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program is designed to learn how to sintetize a one bit multiplexer
 * 4 to 1 module in the FPGA, where:
 * 	(u, v, w, x) are 1 bit inputs
 * 	m is 1 bit output
 * 	s is the 2 bits selector
 */

module Multiplexer4to1_1bit(u, v, w, x, s, M);
	input u, v, w, x;
	input [1:0] s;
	output M;
	
	wire [1:0] m;
	
	Multiplexer2to1_1B inst0(.x(u), .y(v), .s(s[0]), .m(m[0]));
	Multiplexer2to1_1B inst1(.x(w), .y(x), .s(s[0]), .m(m[1]));
	Multiplexer2to1_1B inst2(.x(m[0]), .y(m[1]), .s(s[1]), .m(M));
endmodule 