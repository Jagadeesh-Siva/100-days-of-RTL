module ParityGen(A,Parity); //EvenParity
input [n-1:0]A; output Parity; parameter n=8;
assign  Parity = ^A;
endmodule
