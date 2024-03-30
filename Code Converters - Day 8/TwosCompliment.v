module TwosCompliment(A,F);
input [n-1:0]A; output [n-1:0]F; parameter n =8;
assign F = ~A + 8'b00000001;
endmodule
