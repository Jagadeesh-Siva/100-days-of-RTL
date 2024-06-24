module DFF_TB;
reg D,rst,clk; 
wire Q,Qbar;
DFF M1(D,rst,clk,Q,Qbar);

always #2 clk = ~clk;
initial begin clk = 0; end
initial begin
rst = 1; #1
rst = 0; end 

initial begin
D = 0; #5
D = 1; #5
D = 0; #5
D = 1; #5
$finish;
end
endmodule
