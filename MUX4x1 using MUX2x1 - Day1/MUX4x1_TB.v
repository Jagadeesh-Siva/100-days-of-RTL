module MUX4x1_TB;
reg [3:0]I; reg [1:0]S; wire F;
MUX4x1 X1(I,S,F);
initial begin
{I,S}=6'b100000;#5
{I,S}=6'b010001;#5
{I,S}=6'b001010;#5
{I,S}=6'b000111;#5
$stop; end
endmodule
