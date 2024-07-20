module CarrySaveAdder_tb;
reg [3:0]A,B; 
reg cin;
wire [3:0]sum;
wire cout;
CarrySaveAdder tb1(A,B,cin,sum,cout);
initial
begin
A= 4'b0100; B = 4'b0011; cin=0; #10 //4+7
A= 4'b1001; B = 4'b0011; cin=1; #10 //9+3
A= 4'b1000; B = 4'b0001; cin=0; #10 //8+1
A= 4'b1100; B = 4'b0111; cin=0; #10 //12+7
$stop;
end
endmodule
