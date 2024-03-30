module binary_to_gray_TB;
reg [N-1:0] binary;
wire [N-1:0] gray;
parameter N =3;

binary_to_gray x1(binary,gray);

initial
begin 
binary=3'b000;#5
binary=3'b001;#5
binary=3'b010;#5
binary=3'b011;#5
binary=3'b100;#5
binary=3'b101;#5
binary=3'b110;#5
binary=3'b111;#5
$stop;
end
endmodule
