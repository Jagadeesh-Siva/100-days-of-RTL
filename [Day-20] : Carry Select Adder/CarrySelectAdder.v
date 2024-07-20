module CarrySelectAdder(a,b,cin,sum,cout);
input [3:0]a,b; 
input cin;
output [3:0]sum;
output cout;
wire [3:0]ripple0,ripple1,sum0,sum1;
FullAdder1 select0(a[0],b[0],0,sum0[0],ripple0[0]);
FullAdder1 select1(a[1],b[1],ripple0[0],sum0[1],ripple0[1]);
FullAdder1 select2(a[2],b[2],ripple0[1],sum0[2],ripple0[2]);
FullAdder1 select3(a[3],b[3],ripple0[2],sum0[3],ripple0[3]);

FullAdder1 select4(a[0],b[0],1,sum1[0],ripple1[0]);
FullAdder1 select5(a[1],b[1],ripple1[0],sum1[1],ripple1[1]);
FullAdder1 select6(a[2],b[2],ripple1[1],sum1[2],ripple1[2]);
FullAdder1 select7(a[3],b[3],ripple1[2],sum1[3],ripple1[3]);

MUX2x1 select8 ({sum1[0],sum0[0]},cin,sum[0]);
MUX2x1 select9 ({sum1[1],sum0[1]},cin,sum[1]);
MUX2x1 select10({sum1[2],sum0[2]},cin,sum[2]);
MUX2x1 select11({sum1[3],sum0[3]},cin,sum[3]);

MUX2x1 select12({ripple1[3],ripple0[3]},cin,cout);
endmodule
