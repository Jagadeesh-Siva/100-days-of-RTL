module ParityChecker(A,Parity,Error);
 parameter n =8;
input [n-1:0]A; input Parity; output Error;
assign Error = Parity^(^A);
endmodule
