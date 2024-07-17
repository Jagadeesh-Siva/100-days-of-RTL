module MuxRealizedNOT(F,A);
input A; output F; 
supply0 Gnd; supply1 Vdd;
MUX2x1 i2({Gnd,Vdd},A,F);
endmodule
