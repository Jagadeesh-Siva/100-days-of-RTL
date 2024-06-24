module TFF_TB;
reg T,rst,clk; 
wire Q,Qbar;
TFF M1(T,rst,clk,Q,Qbar);

always #2 clk = ~clk;
initial begin clk = 0; end
initial begin
rst = 1; #1
rst = 0; end

initial begin
T = 0; #5
T = 1; #5
T = 0; #5
T = 1; #5
$finish;
end
endmodule
