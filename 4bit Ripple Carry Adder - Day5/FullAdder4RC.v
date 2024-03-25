module FullAdder4RC(A,B,Cin,Sum,Cout);
input [3:0]A,B; input Cin; output [3:0]Sum; output Cout; wire cout0,cout1,cout2;
FullAdder1 X1(A[0],B[0],Cin,Sum[0],cout0);
FullAdder1 X2(A[1],B[1],cout0,Sum[1],cout1);
FullAdder1 X3(A[2],B[2],cout1,Sum[2],cout2);
FullAdder1 X4(A[3],B[3],cout2,Sum[3],Cout);
endmodule
