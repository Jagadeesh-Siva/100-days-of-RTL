module DEMUX1x4(I,S,D);
input I; input [1:0]S; output reg [3:0]D;
always @(*) begin
case(S)
2'b00: begin D[0]=I; {D[1],D[2],D[3]} = 3'b000; end
2'b01: begin D[1]=I; {D[0],D[2],D[3]} = 3'b000; end
2'b10: begin D[2]=I; {D[0],D[1],D[3]} = 3'b000; end
2'b11: begin D[3]=I; {D[0],D[2],D[0]} = 3'b000; end
endcase end
endmodule
