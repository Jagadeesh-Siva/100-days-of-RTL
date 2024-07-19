module BINtoBCD_tb;
reg [7:0]bin;
wire [3:0]d2,d1,d0;

BINtoBCD tb1(bin,d2,d1,d0);
initial
begin
bin = 8'b11110011; #10
bin = 8'b11111111; #10
bin = 8'b10000100; #10
$stop;
end
endmodule
