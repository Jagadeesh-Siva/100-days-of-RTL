module Sub16sCompliment_tb;
reg [15:0]A;  
reg [15:0]B;  
wire [15:0]Difference;
wire SignBit;
Sub16sCompliment x1(A,B,Difference, SignBit);

initial 
begin
A = 16'hFF69; B = 16'h1912; #5
B = 16'hFF69; A = 16'h1912; #5
$stop;
end

initial
$monitor("At time %t, A = %h, B = %h,Difference = %h, SignBit = %h",$time,A,B,Difference,SignBit);
endmodule
