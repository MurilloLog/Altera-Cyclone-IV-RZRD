/* 2 bits multiplexer: 4 inputs, 1 output
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program is designed to learn how to sintetize a two bits multiplexer
 * 4 to 1 module in the FPGA, where:
 * 	(u, v, w, x) are two bits input
 * 	m is a two bits output
 * 	s is the 2 bits selector
 */

module Multiplexer4to1_2bits(u, v, w, x, s, M);
	input [1:0] u, v, w, x, s;
	output [1:0] M;
	
	Multiplexer4to1_1bit inst0(.u(u[0]), .v(v[0]), .w(w[0]), .x(x[0]), .s(s), .M(M[0]));
	Multiplexer4to1_1bit inst1(.u(u[1]), .v(v[1]), .w(w[1]), .x(x[1]), .s(s), .M(M[1]));
	
endmodule 