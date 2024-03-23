`timescale 1ns / 1ps

module MUX2x1(I,S,F);
input [1:0]I; input S; output F;
assign F = S?I[1]:I[0];
endmodule

module MUX4x1(I,S,F);
input [3:0]I; input [1:0]S; output F; wire w1,w2;
MUX2x1 X0({I[0],I[1]},S[0],w1);
MUX2x1 X1({I[2],I[3]},S[0],w2);
MUX2x1 X2({w1,w2},S[1],F);
endmodule
