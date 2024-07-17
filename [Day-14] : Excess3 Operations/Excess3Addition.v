module Excess3Addition(A,B,SumInExcess3,CarryEx3,SumInBCD,CarryBCD);
input [3:0]A,B; 
output reg [3:0]SumInExcess3,SumInBCD,CarryEx3,CarryBCD; 
reg [7:0]SUM;
reg [3:0]Excess3A,Excess3B;

always@*
begin
Excess3A = A + 4'b0011;
Excess3B = B + 4'b0011;
SUM = Excess3A + Excess3B;
if(SUM[7:4] > 0)
    begin
    SumInExcess3 = SUM[3:0] + 4'b0011;
    CarryEx3 = SUM[7:4] + 4'b0011;
    SumInBCD = SumInExcess3 - 4'b0011;
    CarryBCD = CarryEx3 - 4'b0011;
    end
else
    begin
    SumInExcess3 = SUM[3:0] - 4'b0011;
    CarryEx3 = SUM[7:4];
    SumInBCD = SumInExcess3 - 4'b0011;
    CarryBCD = CarryEx3;
    end
end
endmodule
