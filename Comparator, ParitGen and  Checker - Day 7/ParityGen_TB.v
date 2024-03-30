module ParityGen_TB;
reg [n-1:0]A; wire Parity; parameter n=8;
ParityGen X1(A,Parity);
initial begin
A = 8'b00000011; #5
A = 8'b00000111; #5
$stop; end endmodule
