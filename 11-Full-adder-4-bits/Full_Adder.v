
module Full_Adder(A, B, Ci, Co, S);
	input A, B, Ci;
	output Co, S;
	
	assign Co = (A & B) | (A & Ci) | (B & Ci);
	assign S = A ^ B ^ Ci;
	
endmodule 