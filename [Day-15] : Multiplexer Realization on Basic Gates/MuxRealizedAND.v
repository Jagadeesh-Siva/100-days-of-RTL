module MuxRealizedAND(F,A,B);
input A,B; output F; 
supply0 Gnd; supply1 Vdd;
MUX2x1 i1({B,Gnd},A,F);
endmodule
