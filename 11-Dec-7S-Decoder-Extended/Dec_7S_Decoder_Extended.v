
module Dec_7S_Decoder_Extended(SW, LEDR, HEX0, HEX1);

	//////////// SEG7 //////////
	output [6:0] HEX0;
	output [6:0] HEX1;
	

	//////////// LED //////////
	output [3:0] LEDR;

	//////////// SW //////////
	input [3:0] SW;



//=======================================================
//  REG/WIRE declarations
//=======================================================

	wire [3:0] Z, A, DEC;


//=======================================================
//  Structural coding
//=======================================================

	Comparator comp(.V(SW), .Z(Z));
	CircuitA cA(.V(SW), .A(A));
	
	Multiplexer2to1_4B mux(.x(SW), .y(A), .s(Z[0]), .M(DEC));
	
	Dec_7S_Module_Decoder d1(.SW(Z), .HEX0(HEX1));
	Dec_7S_Module_Decoder d0(.SW(DEC), .HEX0(HEX0));
	

endmodule 