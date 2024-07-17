module Sub9sCompEx3_tb;
reg [3:0]A,B;  
wire [3:0]SumInExcess3,DiffInBCD;
wire Signbit;

Sub9sCompEx3 x1(A,B,SumInExcess3,DiffInBCD,Signbit);
initial 
begin
A = 4'b1001; B = 4'b0001; #5
A = 4'b0001; B = 4'b1001; #5
A = 4'b0100; B = 4'b0101; #5
A = 4'b0101; B = 4'b0100; #5
$stop;
end
