module Sub16sCompliment(A,B,Difference, SignBit);
input [15:0]A;  
input [15:0]B;  
output reg [15:0]Difference;
output reg SignBit;
reg [16:0]SumOut; 
reg [15:0]SixteensCompliment;

always@*
begin
assign SixteensCompliment = ~B +1;
assign SumOut = A + SixteensCompliment;
if(SumOut[16])
begin Difference = SumOut; SignBit = 0; end
else
begin Difference = ~SumOut +1; SignBit = 1; end
end
endmodule
