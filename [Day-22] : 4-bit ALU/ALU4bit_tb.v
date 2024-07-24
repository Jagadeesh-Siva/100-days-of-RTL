module ALU4bit_tb;
    reg [3:0] A;     
    reg [3:0] B;     
    reg [2:0] ALU_Sel; 
    wire [3:0] ALU_Result; 
    wire Zero;
ALU4bit tb(A,B,ALU_Sel,ALU_Result,Zero);
initial 
begin
A = 4'b0111; B = 4'b0100;
ALU_Sel = 3'b000; #5
ALU_Sel = 3'b001; #5
ALU_Sel = 3'b010; #5
ALU_Sel = 3'b011; #5
ALU_Sel = 3'b100; #5
ALU_Sel = 3'b101; #5
ALU_Sel = 3'b110; #5
ALU_Sel = 3'b111; #5
A = 4'b0111; B = 4'b0111;
ALU_Sel = 3'b001; #5
$stop;
end
endmodule
