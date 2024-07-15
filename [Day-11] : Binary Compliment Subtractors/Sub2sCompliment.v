module Sub2sCompliment(A,B,Difference,SignBit);
input [3:0]A;
input [3:0]B;
output reg [4:0]Difference;
output reg SignBit;
reg [3:0]TwosCompliment;
reg [4:0]SumOut;

always@*
begin 
    assign TwosCompliment = ~B + 1;  
    assign SumOut = A + TwosCompliment;
    
    if(SumOut[4])
    begin
    Difference = SumOut[3:0];
    SignBit = 0;
    end  
    
    else
    begin
    Difference = ~SumOut[3:0] + 1;
    SignBit = 1;
    end 
end
endmodule
