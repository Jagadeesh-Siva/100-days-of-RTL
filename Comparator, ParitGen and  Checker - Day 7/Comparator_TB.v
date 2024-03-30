module Comparator_TB;
reg [n-1:0]A,B; wire Eq,Gr,Ls; parameter n=8;
Comparator X1(A,B,Eq,Gr,Ls);
initial begin
{A,B} = 16'b01101010_10010010; #5
{A,B} = 16'b10101010_10101010; #5
{A,B} = 16'b10101010_00101010; #5
$stop; end endmodule
