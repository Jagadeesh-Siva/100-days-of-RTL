module MUX2x1_TB;
reg [1:0]I; reg S; wire F;
MUX2x1 X1(I,S,F);
initial begin
{I,S}=3'b000;#5
{I,S}=3'b001;#5
{I,S}=3'b010;#5
{I,S}=3'b011;#5
{I,S}=3'b100;#5
{I,S}=3'b101;#5
{I,S}=3'b110;#5
{I,S}=3'b111;#5
$stop; end
endmodule
