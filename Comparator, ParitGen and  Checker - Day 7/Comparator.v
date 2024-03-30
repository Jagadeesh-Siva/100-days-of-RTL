module Comparator(A,B,Eq,Gr,Ls);
input [n-1:0]A,B; output Eq,Gr,Ls;
parameter n=8;
assign Eq = (A==B);
assign Gr = (A>B);
assign Ls = (A<B);
endmodule
