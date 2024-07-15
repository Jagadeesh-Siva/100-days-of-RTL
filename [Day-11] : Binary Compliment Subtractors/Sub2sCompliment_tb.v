module Sub2sCompliment_tb;
reg [3:0]A;
reg [3:0]B;
wire [3:0]Difference;
wire SignBit;

Sub2sCompliment x1(A,B,Difference,SignBit);
initial
begin
A = 4'b1000; B = 4'b0100; #5
A = 4'b1000; B = 4'b1001; #5
A = 4'b1100; B = 4'b0011; #5
A = 4'b0011; B = 4'b1100; #5
$stop;
end  

initial begin
$monitor("At time %t, A = %b, B = %b, Difference = %b, SignBit = %b", $time, A, B, Difference, SignBit);
end  
endmodule
