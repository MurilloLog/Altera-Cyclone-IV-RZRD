
module CircuitA(V, A);

	input [3:0] V;
	output [3:0] A;


//=======================================================
//  Structural coding
//=======================================================

	assign A[0] = V[0];
	assign A[1] = ~V[1];
	assign A[2] = V[2]&V[1];
	assign A[3] = ~V[3];

endmodule 