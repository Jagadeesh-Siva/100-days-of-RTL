module Multiplier4bit(a,b,product);
input [3:0]a,b;
output reg [7:0]product;
 reg [7:0]temp;
integer i;
always@*
begin
temp = 0;
for(i=0;i<a;i=i+1)
begin
temp = temp + b;
end   
product = temp; 
end
endmodule
