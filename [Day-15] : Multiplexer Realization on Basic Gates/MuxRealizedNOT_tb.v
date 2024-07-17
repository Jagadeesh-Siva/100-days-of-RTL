module MuxRealizedNOT_tb;
reg A; wire F; 
MuxRealizedNOT x1(F,A);
initial begin
A = 0; #3
A = 1; #3
$stop;
end
endmodule
