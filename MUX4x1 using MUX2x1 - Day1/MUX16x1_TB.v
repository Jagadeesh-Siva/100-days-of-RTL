module MUX16x1_TB;
reg [15:0]I; reg [3:0]S; wire F;
MUX16x1 X1(I,S,F);
initial
begin
{I,S}=20'b00000000000000010000; #5
{I,S}=20'b00000000000000100001; #5
{I,S}=20'b00000000000001000010; #5
{I,S}=20'b00000000000010000011; #5
{I,S}=20'b00000000000100000100; #5
{I,S}=20'b00000000001000000101; #5
{I,S}=20'b00000000010000000110; #5
{I,S}=20'b00000000100000000111; #5
{I,S}=20'b00000001000000001000; #5
{I,S}=20'b00000010000000001001; #5
{I,S}=20'b00000100000000001010; #5
{I,S}=20'b00001000000000001011; #5
{I,S}=20'b00010000000000001100; #5
{I,S}=20'b00100000000000001101; #5
{I,S}=20'b01000000000000001110; #5
{I,S}=20'b10000000000000001111; #5
$stop;
end
endmodule
