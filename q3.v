module q3(a,b,c,d,f);
input a,b,c,d;
output f;
not(na,a);
not(nb,b);
not(nc,c);
not(nd,d);
and(s1,b,nc,nd);
and(s2,na,b);
and(s3,c,d);
and(s4,nb,c);

or(f,s1,s2,s3,s4);
endmodule