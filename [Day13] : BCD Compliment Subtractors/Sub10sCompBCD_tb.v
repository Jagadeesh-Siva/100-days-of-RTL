module Sub10sCompBCD_tb;
reg [3:0]A,B;
wire [3:0]Difference;
wire  Signbit;

Sub10sCompBCD x1(A,B,Difference,Signbit);
initial
begin
A = 4'b1001; B = 4'b0001; #3
A = 4'b0001; B = 4'b1001; #3
A = 4'b0110; B = 4'b0101; #3
A = 4'b0101; B = 4'b0110; #3
$stop;
end
endmodule
