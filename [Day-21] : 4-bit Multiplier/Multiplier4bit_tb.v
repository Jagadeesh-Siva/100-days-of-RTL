module Multiplier4bit_tb;
reg [3:0]a,b;
wire [7:0]product;
Multiplier4bit tb1(a,b,product);
initial begin
a = 4'b0011; b = 4'b0010; #5
a = 4'b0010; b = 4'b0101; #5
a = 4'b0111; b = 4'b0100; #5
a = 4'b1001; b = 4'b1001; #5
$stop;
end  
endmodule
