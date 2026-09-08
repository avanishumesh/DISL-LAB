module q9(a,b,c,d,f);
input a,b,c,d;
output f;

nor(nb,b,b);
nor(na,a,a);
nor(nc,c,c);
nor(nd,d,d);

nor(p1,nb,d);
nor(p2,na,nb);
nor(p3,nc,nd);

nor(f,p1,p2,p3);
endmodule