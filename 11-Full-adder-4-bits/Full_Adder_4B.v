
module Full_Adder_4B(A, B, Cin, Cout, S);
	input [3:0] A, B;
	input Cin;
	output Cout;
	output [3:0] S;
	
	wire [3:1] C;
	
	Full_Adder inst0(
							.A(A[0]),
							.B(B[0]),
							.Ci(Cin),
							.Co(C[1]),
							.S(S[0])
							);
							
	Full_Adder inst1(
							.A(A[1]),
							.B(B[1]),
							.Ci(C[1]),
							.Co(C[2]),
							.S(S[1])
							);
							
	Full_Adder inst2(
							.A(A[2]),
							.B(B[2]),
							.Ci(C[2]),
							.Co(C[3]),
							.S(S[2])
							);
							
	Full_Adder inst3(
							.A(A[3]),
							.B(B[3]),
							.Ci(C[3]),
							.Co(Cout),
							.S(S[3])
							);
	
endmodule 