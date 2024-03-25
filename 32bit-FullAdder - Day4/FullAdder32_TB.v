module FullAdder32_TB;
reg [31:0]A,B; reg Cin; wire [31:0]Sum; wire Cout;
FullAdder32 X1(A,B,Cin,Sum,Cout);
initial begin
A = 32'h12345678; B=32'h87654321; Cin=0; #10
A = 32'hfedcba98; B=32'he45f87a1; Cin=1; #10 
$stop; end endmodule
