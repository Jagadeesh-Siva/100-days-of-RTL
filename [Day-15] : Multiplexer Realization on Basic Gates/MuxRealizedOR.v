module MuxRealizedOR(F,A,B);
input A,B; output F; 
supply0 Gnd; supply1 Vdd;
MUX2x1 i1({Vdd,B},A,F);
endmodule
