/* From decimal to 7 segments decoder module instantiation
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program is designed to learn how to instantiate the simple decimal
 * to 7 segments module using eigth inputs in the FPGA. It uses the DIP
 * switches on the FPGA, and the light emitting diodes (LEDs) and 
 * two 7 segment displays as outputs.
 * For instance, SW[7:4] represents the 4 DIP switch inputs for HEX1, 
 * SW[3:0] represents the 4 DIP switch inputs for HEX0, and LEDR
 * represents the 8 outputs of each switch.
 */
 
module Dec_7S_Decoder(SW, LEDR, HEX0, HEX1);

	input [7:0] SW;
	output [7:0] LEDR;
	output [6:0] HEX0;
	output [6:0] HEX1;
	
	wire [1:0] M;
	
	Dec_7S_Module_Decoder(.SW(SW[7:4]), .LEDR(LEDR[7:4]), .HEX0(HEX1));
	Dec_7S_Module_Decoder(.SW(SW[3:0]), .LEDR(LEDR[3:0]), .HEX0(HEX0));
	
endmodule 