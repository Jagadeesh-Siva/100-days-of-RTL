module JKFF_TB;
reg J,K,clk,rst;
wire Q, Qbar;

JKFF FF1(J,K,clk,rst,Q,Qbar);

always #2 clk = ~ clk;
initial begin
clk = 0; end

initial begin
rst = 1; #1
rst = 0; #2
#100
$stop;
end  

initial 
begin
{J,K} = 2'b00; #10
{J,K} = 2'b01; #5
{J,K} = 2'b10; #5
{J,K} = 2'b11; #5
{J,K} = 2'b00; #5
$finish;
end
endmodule
