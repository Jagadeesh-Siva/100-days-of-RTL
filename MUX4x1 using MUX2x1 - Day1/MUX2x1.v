module MUX2x1(I,S,F);
input [1:0]I; input S; output F;
assign F = S?I[1]:I[0];
endmodule
