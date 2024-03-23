module DEMUX1x4_TB;
reg I; reg [1:0]S;  wire [3:0]D;
DEMUX1x4 X1(I,S,D);
initial begin
{S,I} = 3'b000; #5
{S,I} = 3'b001; #5
{S,I} = 3'b010; #5
{S,I} = 3'b011; #5
{S,I} = 3'b100; #5
{S,I} = 3'b101; #5
{S,I} = 3'b110; #5
{S,I} = 3'b111; #5
$stop;
end endmodule
