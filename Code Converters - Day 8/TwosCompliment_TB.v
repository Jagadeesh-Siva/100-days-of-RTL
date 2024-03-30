module TwosCompliment_TB;
reg [n-1:0]A; wire [n-1:0]F; parameter n =8;
TwosCompliment X1(A,F);
initial begin
A = 8'b00000001; #5
$stop; end endmodule
