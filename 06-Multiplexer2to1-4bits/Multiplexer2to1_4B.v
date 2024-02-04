/* 4 bits multiplexer: 2 inputs, 1 output
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program is designed to learn how to sintetize a 4 bits multiplexer
 * 2 to 1 module in the FPGA implementing a 1 bit multiplexer 2 to 1 module.
 * For instance, x/y represent the 4 bits button inputs, s represents
 * the 1 bit selector using the DIP switch, and m represents the 4 bits LED output.
 *
 * PIN PLANER:
 * Switch:
 * 	s <- PIN_30
 *
 * Buttons:
 * 	x[3:0] <- PIN_88, PIN_89, PIN_90, PIN_91
 * 	y[3:0] <- PIN_28, PIN_31, PIN_33, PIN_38 :: P2 terminal section pins

 * LEDs:
 * 	M[3:0] <- PIN_87, PIN_86, PIN_85, PIN_84
 */

module Multiplexer2to1_4B(x, y, s, M);
	input [3:0] x, y;
	input s;
	output [3:0] M;
	
	// Mapping Mux2to1 module
	Multiplexer2to1_1B m3(.x(x[3]), .y(y[3]), .s(s), .m(M[3]));
	Multiplexer2to1_1B m2(.x(x[2]), .y(y[2]), .s(s), .m(M[2]));
	Multiplexer2to1_1B m1(.x(x[1]), .y(y[1]), .s(s), .m(M[1]));
	Multiplexer2to1_1B m0(.x(x[0]), .y(y[0]), .s(s), .m(M[0]));
	
endmodule 