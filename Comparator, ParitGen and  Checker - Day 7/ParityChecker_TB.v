module ParityChecker_TB;
 parameter n =8;
reg [n-1:0]A; reg Parity; wire Error;
ParityChecker X1(A,Parity,Error);
initial begin
{A,Parity} = 9'b000001111; #5
{A,Parity} = 9'b000001110; #5
{A,Parity} = 9'b000001101; #5
{A,Parity} = 9'b000001100; #5
$stop; end endmodule
