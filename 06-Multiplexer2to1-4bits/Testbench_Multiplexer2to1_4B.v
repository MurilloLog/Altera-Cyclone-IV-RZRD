/* Testbench for one bit multiplexer: 2 inputs, 1 output
 * Author: Gustavo-Adolfo Murillo
 * Date: February 2024
 * 
 * DESCRIPTION:
 * This program was written to learn how to simulate a one bit multiplexer
 * 2 to 1 module.
 */
 
module Testbench_Multiplexer2to1_4B;
	reg x, y, s; // Inputs
	wire M; // Output
	
	// Mapping the Mux2to1 module
	Multiplexer2to1_4B inst1(.x(x), .y(y), .s(s), .M(M));	
	
	initial
	$monitor("x=%4b, y=%4b, s=%b, M=%4b", x ,y, s, M);
	
	initial begin
	#0 x=4'b0000; y=4'b0000; s=1'b0;
	#10 x=4'b0001; y=4'b1000; s=1'b0;
	#10 x=4'b0011; y=4'b1100; s=1'b0;
	#10 x=4'b0011; y=4'b1100; s=1'b1;
	#10 x=4'b0000; y=4'b1110; s=1'b1;
	#10 $stop;
	end

endmodule
