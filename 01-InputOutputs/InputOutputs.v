/* Inputs and outputs
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program is designed to learn how to connect simple input
 * and outputs devices in the FPGA. It uses the DIP switches on the
 * EP4CE-series as inputs to the circuit, and the light emitting 
 * diodes (LEDs) as outputs.
 * For instance, SW represents the 4 DIP switch inputs, and LED
 * represents the 4 LED outputs.
 *
 * PIN PLANER:
 * Swtiches:
 * 	SW[3] <- PIN_88
 * 	SW[2] <- PIN_89
 * 	SW[1] <- PIN_90
 * 	SW[0] <- PIN_91
 *
 * LEDs:
 * 	LED[3] <- PIN_84
 * 	LED[2] <- PIN_85
 * 	LED[1] <- PIN_86
 * 	LED[0] <- PIN_87
 */

module InputOutputs(SW, LED);
	input [3:0] SW;
	output [3:0] LED;
	
	assign LED = SW;
	
endmodule