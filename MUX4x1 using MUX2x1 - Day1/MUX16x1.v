`timescale 1ns / 1ps
module MUX16x1(I,S,F);
input [15:0]I; input [3:0]S; output reg F;
always@(*) begin
case(S) 
4'b0000:F=I[0];
4'b0001:F=I[1];
4'b0010:F=I[2];
4'b0011:F=I[3];
4'b0100:F=I[4];
4'b0101:F=I[5];
4'b0110:F=I[6];
4'b0111:F=I[7];
4'b1000:F=I[8];
4'b1001:F=I[9];
4'b1010:F=I[10];
4'b1011:F=I[11];
4'b1100:F=I[12];
4'b1101:F=I[13];
4'b1110:F=I[14];
4'b1111:F=I[15];
endcase
end
endmodule
