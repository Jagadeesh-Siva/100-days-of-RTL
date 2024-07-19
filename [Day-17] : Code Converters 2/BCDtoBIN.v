module BCDtoBIN(d2,d1,d0,bin);
output reg  [7:0]bin;
input [3:0]d2,d1,d0;
reg [11:0]bcd_reg;
integer i; 

always@*
begin
bcd_reg = {d2,d1,d0};
bin = 8'b0;
for(i=0;i<8;i = i+1)
begin
if(bcd_reg[11:8]>7) bcd_reg[11:8] = bcd_reg[11:8] -3;
if(bcd_reg[7:4]>7) bcd_reg[7:4] = bcd_reg[7:4] -3;
if(bcd_reg[3:0]>7) bcd_reg[3:0] = bcd_reg[3:0] -3;
{bcd_reg,bin} = ({bcd_reg,bin} >> 1);
end
end
endmodule
