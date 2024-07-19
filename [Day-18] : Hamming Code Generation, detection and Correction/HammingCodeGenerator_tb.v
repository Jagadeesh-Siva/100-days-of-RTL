module HammingCodeGenerator_tb;
reg [0:3]datain;
wire [6:0]hammingcode;
HammingCodeGenerator tb1(datain,hammingcode);
initial
begin
datain = 4'b1001; #10
datain = 4'b0010; #10
datain = 4'b0111; #10
datain = 4'b0100; #10 
$stop;
end
endmodule
