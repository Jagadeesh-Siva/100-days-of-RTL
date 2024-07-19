module BINtoBCD(bin,d2,d1,d0);
input  [7:0]bin;
output reg [3:0]d2,d1,d0;
reg [7:0]bin_reg;
integer i; 

always@*
begin
bin_reg = bin;
{d2,d1,d0} = 12'b0;
for(i=0;i<8;i = i+1)
begin
if(d2>4) d2 = d2 +3;
if(d1>4) d1 = d1 +3;
if(d0>4) d0 = d0 +3;
{d2,d1,d0,bin_reg} = ({d2,d1,d0,bin_reg} << 1);
end
end
endmodule
