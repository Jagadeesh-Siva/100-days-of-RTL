module TFF(T,rst,clk,Q,Qbar);
input T,rst,clk; 
output reg Q,Qbar;

always@(posedge clk, posedge rst)
if(rst)
begin Q=0; Qbar=1; end
else
case(T)
1'b1: begin Q <= Qbar; Qbar <= Q; end
endcase
endmodule
