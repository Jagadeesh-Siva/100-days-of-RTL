module FullAdder4RC_TB;
reg [3:0]A,B; reg Cin; wire [3:0]Sum; wire Cout;
FullAdder4RC Y1(A,B,Cin,Sum,Cout);
initial begin
{A,B} = 8'h34; Cin=0; #5
{A,B} = 8'hff; Cin=1; #5
{A,B} = 8'h7a; Cin=0; #5
{A,B} = 8'hff; Cin=0; #5
$stop; end endmodule
