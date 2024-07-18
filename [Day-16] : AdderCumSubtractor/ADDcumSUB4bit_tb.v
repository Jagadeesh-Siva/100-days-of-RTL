module ADDcumSUB4bit_tb;
reg [3:0]A,B; 
reg Cin;
wire [3:0] F;  
wire Cout;

ADDcumSUB4bit x1(A,B,Cin,F,Cout);
initial
begin
A = 4'b1001; B = 4'b0001; Cin =0; #3
A = 4'b0001; B = 4'b1001; Cin =0; #3
A = 4'b0110; B = 4'b0101; Cin =1; #3
A = 4'b0101; B = 4'b0110; Cin =1; #3
$stop;
end
endmodule
