module HcodeCorrection(hcodenin,hcodeout);
input [6:0]hcodenin;
output reg [6:0]hcodeout;
reg p0,p1,p2;
integer corbit;
always@*
begin
p0 = hcodenin[0]^hcodenin[2]^hcodenin[4]^hcodenin[6];
p1 = hcodenin[1]^hcodenin[2]^hcodenin[5]^hcodenin[6];
p2 = hcodenin[3]^hcodenin[4]^hcodenin[5]^hcodenin[6];
corbit = p0+(p1*2)+(p2*4);
if(corbit == 0)
    hcodeout = hcodenin;
else
    begin
    hcodeout = hcodenin;
    hcodeout[corbit-1] = ~hcodeout[corbit-1];
    end
end
endmodule
