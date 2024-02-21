/* From decimal to 7 segments decoder module
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program is designed to learn how to build a simple decimal
 * to 7 segments module using four inputs in the FPGA. It uses the DIP
 * switches on the FPGA, and the light emitting diodes (LEDs) and 
 * 7 segment displays as outputs.
 * For instance, SW[3:0] represents the 4 DIP switch inputs, and LEDR
 * and HEX0[6:0] represents the 4 outputs.
 *
 */
 
module Dec_7S_Module_Decoder(SW, LEDR, HEX0);

	input [3:0] SW;
	output [3:0] LEDR;
	output [6:0] HEX0;
	
	wire M;
	
	assign HEX0[6] = ~SW[3]&~SW[2]&~SW[1] | SW[2]&SW[1]&SW[0];
	assign HEX0[5] = ~SW[3]&~SW[2]&SW[0] | ~SW[3]&~SW[2]&SW[1] | SW[1]&SW[0];
	assign HEX0[4] = SW[0] | SW[2]&~SW[1];
	assign HEX0[3] = ~SW[3]&~SW[2]&~SW[1]&SW[0] | SW[2]&~SW[1]&~SW[0] | SW[2]&SW[1]&SW[0];
	assign HEX0[2] = ~SW[2]&SW[1]&~SW[0];
	assign HEX0[1] = SW[2]&~SW[1]&SW[0] | SW[2]&SW[1]&~SW[0];
	assign HEX0[0] = SW[2]&~SW[1]&~SW[0] | ~SW[3]&~SW[2]&~SW[1]&SW[0];
	
	assign LEDR = SW;
	
endmodule 