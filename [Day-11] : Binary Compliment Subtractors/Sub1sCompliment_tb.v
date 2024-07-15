
module Sub1sCompliment_tb;
reg [3:0]A;
reg [3:0]B;
wire [3:0]Difference;
wire Signbit;

Sub1sCompliment x1(A,B,Difference,Signbit);
initial
begin
A = 4'b1000; B = 4'b0100; #5
A = 4'b1000; B = 4'b1001; #5
A = 4'b1100; B = 4'b0011; #5
A = 4'b0011; B = 4'b1100; #5
$stop;
end  

initial begin
$monitor("At time %t, A = %b, B = %b, Difference = %b, Signbit = %b", $time, A, B, Difference, Signbit);
end  
endmodule
