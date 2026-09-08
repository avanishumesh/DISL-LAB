module q10(a,b,c,d,f);
input a,b,c,d;
output f;


nor(na,a,a);
nor(nc,c,c);
nor(nd,d,d);


nor(p1,na,nc);

nor(f,p1,nd);
endmodule