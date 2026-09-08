module q6(a,b,c,d,f);
input a,b,c,d;
output f;
not(na,a);
not(nb,b);
not(nc,c);
not(nd,d);
or(s1,nb,na,c);
and(s2,na,nd,c);
and(s3,na,b,nc);
and(s4,a,nc,d);

or(f,s1,s2,s3,s4);
endmodule