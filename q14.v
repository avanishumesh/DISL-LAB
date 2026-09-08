module q14(a3,a2,a1,a0,b3,b2,b1,b0,cin,cout,s3,s2,s1,s0);
input a3,a2,a1,a0,b3,b2,b1,b0,cin;
output s3,s2,s1,s0,cout;

fulladd stage0(a0,b0^cin,cin,c0,s0);
fulladd stage1(a1,b1^cin,c0,c1,s1);
fulladd stage2(a2,b2^cin,c1,c2,s2);
fulladd stage3(a3,b3^cin,c2,cout,s3);

endmodule

module fulladd(a,b,cin,cout,s);
input a,b,cin;
output cout,s;

assign cout = (a&b)|(a&cin)|(b&cin);
assign s = a^b^cin;
endmodule
