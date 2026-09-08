module q15(a1,a0,b1,b0,p0,p1,p2,p3);
input a1,a0,b1,b0;
output p0,p1,p2,p3;

wire x1,x2,x3,c1,c2;

and(p0,a0,b0);
and(x1,a0,b1);
and(x2,a1,b0);
and(x3,a1,b1);

halfadd stage1(x1,x2,c1,p1);
halfadd stage2(x3,c1,c2,p2);
assign p3 = c2;

endmodule

module halfadd(a,b,cout,s);

input a,b;
output cout,s;
assign s = a^b;
assign cout = a&b;

endmodule