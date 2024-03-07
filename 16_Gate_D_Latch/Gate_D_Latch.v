
/* Combinational style module */
module Gate_D_Latch(D, EN, Q);
	input D, EN;
	output Q;
	
	wire G1, G2, G3, G4;
	
	assign G1 = ~(D & EN);
	assign G2 = ~(~D & EN);
	assign G3 = ~(G1 | G4);
	assign G4 = ~(G3 | G2);
	assign Q = G3;
	
endmodule 




/* Behavioral style module */
/*
module Gate_D_Latch(D, EN, Q);
	input D, EN;
	output reg Q;
	
	always @(D, EN)
		begin
			if(EN == 1)
				Q <= D;
			else
				Q <= 0;
		end
	
endmodule 
*/