module q7(x1,x2,x3,x4,f);
input x1,x2,x3,x4;
output f;

and(s1,x1,x2,x3);
and(s2,x2,x3,x4);
and(s3,x1,x3,x4);
and(s4,x1,x2,x4);
or(f,s1,s2,s3,s4);

endmodule