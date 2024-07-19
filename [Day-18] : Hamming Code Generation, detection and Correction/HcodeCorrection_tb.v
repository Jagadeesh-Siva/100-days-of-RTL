module HcodeCorrection_tb;
reg [6:0]hcodenin;
wire [6:0]hcodeout;
HcodeCorrection tb1(hcodenin,hcodeout);
initial
begin
hcodenin = 7'b1000100; #10
hcodenin = 7'b1101010; #10
hcodenin = 7'b1111100; #10
hcodenin = 7'b0010001; #10
$stop;
end  
endmodule
