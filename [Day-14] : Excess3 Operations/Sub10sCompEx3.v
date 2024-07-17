module Sub10sCompEx3(A,B,SumInExcess3,DiffInBCD,Signbit);
input [3:0]A,B;  
output reg [3:0]SumInExcess3,DiffInBCD;
output reg Signbit;
reg [3:0]X3A,X3B,NinesCompOfB;
reg [4:0]Sumout;
always@*
begin
X3A = A + 4'b0011;
NinesCompOfB = (4'b1001 - B + 1) + 4'b0011;

Sumout = X3A + NinesCompOfB;
    if(Sumout[4])
    begin
        if(A>B)
        begin
        SumInExcess3 = (Sumout[3:0] ) + 4'b0011;  
        DiffInBCD = SumInExcess3 - 4'b0011 ;
        Signbit = 0;
        end
        else
        begin
        SumInExcess3 = ~(Sumout[3:0] + 4'b0011) + 1;  
        DiffInBCD = SumInExcess3 - 4'b0011 ;
        Signbit = 1;
        end
    end
    else
    begin
        if(Sumout[3:0] > 4'b1100 || Sumout[3:0] < 4'b0011)
        begin
        SumInExcess3 = ~(Sumout[3:0]) + 4'b0011 + 1;  
        DiffInBCD =  (SumInExcess3 - 4'b0011) ;
        Signbit = 1;
        end   
        else
        begin
        SumInExcess3 =  ~(Sumout[3:0] - 4'b0011) + 1;  
        DiffInBCD =  (SumInExcess3 - 4'b0011);
        Signbit = 1;
        end
     end
end
endmodule
