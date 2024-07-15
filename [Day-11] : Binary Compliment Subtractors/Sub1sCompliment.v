module Sub1sCompliment(A,B,Difference,Signbit);
input [3:0]A;
input [3:0]B;
output reg [3:0]Difference;
output reg Signbit;
reg carry;
reg [3:0]OnesCompliment;
reg [3:0]sum;

always@*
begin
 OnesCompliment = ~B;
 {carry,sum} = A + OnesCompliment;

if(carry)
begin
 Difference = sum + carry;
 Signbit = 0;
end

else
begin
 Difference = ~sum;
 Signbit = 1;
end
  
end
endmodule
