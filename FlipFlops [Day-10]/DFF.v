module DFF(D,rst,clk,Q,Qbar);
input D,rst,clk; 
output reg Q;
output wire Qbar;

assign Qbar = ~Q;
always@(posedge clk, posedge rst)
if(rst)
Q=0;
else
case(D)
1'b0: Q = 0;
1'b1: Q = 1;
endcase
endmodule
