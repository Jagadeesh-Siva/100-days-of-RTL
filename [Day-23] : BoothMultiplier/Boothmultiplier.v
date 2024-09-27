module BoothMultiplier(Q,M,P);
input [3:0]Q,M;
output reg[7:0]P;
reg [3:0]A = 4'b0000;
reg Qn = 0;
reg [3:0]tempQ;
reg [3:0]tempM;
always@*
begin
tempQ = Q;
tempM = M;
    repeat(4)
    begin    
        if(tempQ[0]==1 && Qn==0)
        begin A = A-tempM; end
        
        if(tempQ[0]==0 && Qn==1)
        begin A = A+tempM; end  
        
        {A,tempQ,Qn} = {1'b1,A,tempQ};   
    end
P = {A,tempQ};
end
endmodule
