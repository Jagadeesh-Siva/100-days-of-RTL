module PriorENC4x1(I,En,D);
input [3:0]I; input En; output reg [1:0]D;
always@(*) begin
if(En) begin
casez(I)
default: D=2'b00;
4'bzzz1: D=2'b00;
4'bzz10: D=2'b01;
4'bz100: D=2'b10;
4'b1000: D=2'b11; 
endcase end
else D=2'b00; end
endmodule
