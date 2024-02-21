
module Comparator(V, Z);

	input [3:0] V;
	output [3:0] Z;


//=======================================================
//  Structural coding
//=======================================================

	assign Z[3:1] = 1'b0;
	assign Z[0] = V[3]&V[2] | V[3]&V[1];

endmodule 