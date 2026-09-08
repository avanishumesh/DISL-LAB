module q16(a3,a2,a1,a0,b3,b2,b1,b0,cout,s3,s2,s1,s0);
input a3,a2,a1,a0,b3,b2,b1,b0;
output cout,s3,s2,s1,s0;

wire correction;
wire t3,t2,t1,t0,cininitial;

fourbitadder stage0(a3,a2,a1,a0,b3,b2,b1,b0,cinitial,t3,t2,t1,t0);

assign correction = cinitial|(t3&t2)|(t3&t1);

fourbitadder stage1(1'b0,correction,correction,1'b0,t3,t2,t1,t0,cout,s3,s2,s1,s0);

endmodule
module fourbitadder(a3,a2,a1,a0,b3,b2,b1,b0,cout,s3,s2,s1,s0);
input a3,a2,a1,a0,b3,b2,b1,b0;
output cout,s3,s2,s1,s0;
wire c0,c1,c2;
fulladd stage0(a0,b0,1'b0,c0,s0);
fulladd stage1(a1,b1,c0,c1,s1);
fulladd stage2(a2,b2,c1,c2,s2);
fulladd stage3(a3,b3,c2,cout,s3);
endmodule

module fulladd(a,b,cin,cout,s);
input a,b,cin;
output cout,s;

assign cout = (a&b)|(a&cin)|(b&cin);
assign s = a^b^cin;

endmodule

