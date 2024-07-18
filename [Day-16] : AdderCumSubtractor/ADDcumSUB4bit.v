module ADDcumSUB4bit(A,B,Cin,F,Cout);
input [3:0]A,B; 
input Cin;
output [3:0] F;  
output Cout;
wire [3:0]CompIfCarry;
wire w1,w2,w3;
xor(CompIfCarry[0],B[0],Cin);
xor(CompIfCarry[1],B[1],Cin);
xor(CompIfCarry[2],B[2],Cin);
xor(CompIfCarry[3],B[3],Cin);

FullAdder1 r1(A[0],CompIfCarry[0],Cin,F[0],w1);
FullAdder1 r2(A[1],CompIfCarry[1],w1,F[1],w2);
FullAdder1 r3(A[2],CompIfCarry[2],w2,F[2],w3);
FullAdder1 r4(A[3],CompIfCarry[3],w3,F[3],Cout);
endmodule
