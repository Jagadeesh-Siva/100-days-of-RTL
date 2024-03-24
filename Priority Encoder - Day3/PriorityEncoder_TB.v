module PriorENC4x1_TB;
reg [3:0]I; reg En; wire [1:0]D;
PriorENC4x1 X1(I,En,D);
initial begin
{En,I} = 5'b00001; #5
{En,I} = 5'b00010; #5
{En,I} = 5'b00100; #5
{En,I} = 5'b01000; #5
{En,I} = 5'b11111; #5
{En,I} = 5'b11110; #5
{En,I} = 5'b11100; #5
{En,I} = 5'b11000; #5
$stop; end endmodule
