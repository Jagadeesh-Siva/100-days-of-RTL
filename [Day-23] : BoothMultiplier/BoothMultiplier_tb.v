module BoothMultiplier_tb;
reg [3:0]Q,M;
wire [7:0]P;

BoothMultiplier X1(Q,M,P);
initial 
begin
Q=4'b0011; M=4'b0100; #10//2's Compliment of -13 is 1101-> 0011
$stop;
end

endmodule
