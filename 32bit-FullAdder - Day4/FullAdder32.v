module FullAdder32(A,B,Cin,Sum,Cout);
input [31:0]A,B; input Cin; output [31:0]Sum; output Cout;
assign {Cout,Sum} = A+B+Cin;
endmodule
