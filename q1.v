module q1(x1,x2,x3,x4,f);
input x1,x2,x3,x4;
output f;
and(a,x1,x2);
or(o,a,x3);
not(n,o);
and(d,n,x4);
or(r,o,d);
and(f,d,r);
endmodule