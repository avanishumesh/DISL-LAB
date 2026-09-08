module q4(a,b,c,d,f);
input a,b,c,d;
output f;
not(nb,b);
not(nc,c);
not(nd,d);
and(s1,b,nc,nd);
and(s2,nb,d);
and(s3,nb,c);


or(f,s1,s2,s3);
endmodule