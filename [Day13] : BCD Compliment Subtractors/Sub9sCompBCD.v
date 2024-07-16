module Sub9sCompBCD(A,B,Difference,Signbit);
input [3:0]A,B;
output reg[3:0]Difference;
output reg Signbit;
reg [4:0]Sumout;
reg [4:0]Sumout2;
reg [3:0]NinesCompliment;

always@*
begin
NinesCompliment = 4'b1001 - B;
Sumout = A + NinesCompliment;
    if(Sumout[4] || (Sumout[3:0]>4'b1001))
    begin
    Sumout2 = Sumout[4:0] + 4'b0110;
        if(Sumout2[4])
        begin
        Difference = Sumout2[3:0] + 1;
        Signbit = 0;
        end
        
        else
        begin
        Difference = 4'b1001 - Sumout2[3:0];
        Signbit = 1;
        end
    end   
    
    else 
    begin
    Difference = 4'b1001 - Sumout[3:0];
    Signbit = 1;
    end
end
endmodule
