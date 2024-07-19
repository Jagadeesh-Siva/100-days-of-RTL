module HammingCodeGenerator(datain,hammingcode);
input [0:3]datain;
output reg [6:0]hammingcode;
always@*
begin
hammingcode[6:0] = {datain[3],datain[2],datain[1],1'b0,datain[0],1'b0,1'b0};
hammingcode[0] = hammingcode[2]^hammingcode[4]^hammingcode[6];
hammingcode[1] = hammingcode[2]^hammingcode[5]^hammingcode[6];
hammingcode[3] = hammingcode[4]^hammingcode[5]^hammingcode[6];
end
endmodule
