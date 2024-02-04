/* Multiplexer 2 to 1
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program is designed to learn how to sintetize a multiplexer
 * 2 to 1 module in the FPGA. It uses the DIP switch and buttons
 * as inputs, and the light emitting diode (LED) as output.
 * For instance, x/y represent the button input, s represents
 * the selector using the DIP switch, and m represents the LED output.
 *
 * PIN PLANER:
 * Swtich:
 * 	s <- PIN_91
 *
 * Buttons:
 * 	x <- PIN_88
 * 	y <- PIN_89

 * LEDs:
 * 	m <- PIN_87
 */

module Multiplexer2to1(x, y, s, m);
	input x, y, s;
	output m;
	
	assign m = (~s & x) | (s & y);
endmodule 