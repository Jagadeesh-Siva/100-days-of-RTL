module CarrySaveAdder(A,B,cin,sum,cout);
input [3:0]A,B; 
input cin;
output [3:0]sum;
output cout;
wire [3:0]carries,w,tempsum,w1,w2;

FullAdder1 csa0(A[0],B[0],cin,tempsum[0],carries[0]);
FullAdder1 csa1(A[1],B[1],0,tempsum[1],carries[1]);
FullAdder1 csa2(A[2],B[2],0,tempsum[2],carries[2]);
FullAdder1 csa3(A[3],B[3],0,tempsum[3],carries[3]);

FullAdder1 csa4(tempsum[0],0,0,sum[0],w[0]);
FullAdder1 csa5(tempsum[1],carries[0],w[0],sum[1],w[1]);
FullAdder1 csa6(tempsum[2],carries[1],w[1],sum[2],w[2]);
FullAdder1 csa7(tempsum[3],carries[2],w[2],sum[3],w[3]);
FullAdder1 csa8(0,carries[3],w[3],cout,w1);
endmodule
