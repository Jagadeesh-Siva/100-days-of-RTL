module CarrySelectAdder_tb;
reg [3:0]a,b; 
reg cin;
wire [3:0]sum;
wire cout;
CarrySelectAdder tb1(a,b,cin,sum,cout);
initial
begin
a= 4'b0100; b = 4'b0011; cin=0; #10 //4+7
a= 4'b1001; b = 4'b0011; cin=1; #10 //9+3
a= 4'b1000; b = 4'b0001; cin=0; #10 //8+1
a= 4'b1100; b = 4'b0111; cin=0; #10 //12+7
$stop;
end
endmodule
