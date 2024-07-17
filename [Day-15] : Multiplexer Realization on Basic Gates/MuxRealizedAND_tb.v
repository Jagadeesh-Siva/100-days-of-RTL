module MuxRealizedAND_tb;
reg A,B; wire F; 
MuxRealizedAND x1(F,A,B);
initial begin
{A,B} = 2'b00; #3
{A,B} = 2'b01; #3
{A,B} = 2'b10; #3
{A,B} = 2'b11; #3
$stop;
end
endmodule
