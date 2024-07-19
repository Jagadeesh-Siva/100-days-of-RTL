module BCDtoBIN_tb;
wire [7:0]bin;
reg [3:0]d2,d1,d0;

BCDtoBIN tb1(d2,d1,d0,bin);
initial
begin
{d2,d1,d0} =  12'b0010_0100_0011; #10
{d2,d1,d0} =  12'b0010_0101_0101; #10
{d2,d1,d0} =  12'b0001_0011_0010; #10
$stop;
end
endmodule
