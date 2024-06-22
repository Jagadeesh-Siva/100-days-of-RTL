module SRFF_TB;
reg S,R,clk,rst;
wire Q,Qbar;
SRFF SR1(S,R,clk,rst,Q,Qbar);

always #2 clk = ~clk;

initial begin
clk = 1'b0;
rst = 1'b1; #3
rst = 1'b0; #2
{S,R} = 2'b00; #5
{S,R} = 2'b01; #5
{S,R} = 2'b10; #5
{S,R} = 2'b11; #5
{S,R} = 2'b00; #5
$finish;
end
endmodule
