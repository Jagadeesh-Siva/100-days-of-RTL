module SRFF(S,R,clk,rst,Q,Qbar);
input S,R,clk,rst;
output reg Q,Qbar;

always@(posedge clk, posedge rst)
begin
if(rst)
begin Q = 0; Qbar = 1; end 
else 
case({S,R})
2'b01 :  begin Q = 0; Qbar = 1; end
2'b10 :  begin Q = 1; Qbar = 0; end
2'b11 :  begin Q <= Qbar; Qbar <= Q; end
endcase
end
endmodule
