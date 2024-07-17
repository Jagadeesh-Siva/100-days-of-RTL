module Excess3Addition_tb;
reg [3:0]A,B; 
wire [3:0]CarryEx3,SumInExcess3,CarryBCD,SumInBCD;
Excess3Addition x1(A,B,SumInExcess3,CarryEx3,SumInBCD,CarryBCD);
initial 
    begin
    A= 4'b1001; B=4'b1000; #3
    A= 4'b0001; B=4'b0100; #3
    A= 4'b0101; B=4'b0101; #3
    A= 4'b0011; B=4'b0010; #3
    $stop; 
    end
endmodule
