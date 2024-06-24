module JKFF(J,K,clk,rst,Q,Qbar);
input J,K,clk,rst;
output reg Q, Qbar;

always@(posedge clk or posedge rst)
if(rst)
begin Q=0; Qbar =~Q; end
else
case ({J,K})
2'b01: begin Q = 0; Qbar = 1; end
2'b10: begin Q = 1; Qbar = 0; end
2'b11: begin Q <= Qbar; Qbar <= Q; end
endcase
endmodule
