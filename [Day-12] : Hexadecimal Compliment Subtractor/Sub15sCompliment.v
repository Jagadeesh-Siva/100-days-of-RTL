module Sub15sCompliment(A,B,Difference, SignBit);
input [15:0]A;  
input [15:0]B;  
output reg [15:0]Difference;
output reg SignBit;
reg [16:0]SumOut; 
reg [15:0]FifteensCompliment;

always@*
begin
assign FifteensCompliment = ~B;
assign SumOut = A + FifteensCompliment;
if(SumOut[16])
begin Difference = SumOut +1; SignBit = 0; end
else
begin Difference = ~SumOut +1; SignBit = 1; end
end
endmodule
