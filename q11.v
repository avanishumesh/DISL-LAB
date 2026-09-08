module q11(a,b,c,d,f);
input a,b,c,d;
output f;

nand(nb,b,b);
nand(na,a,a);
nand(nd,d,d);

nand(s1,nb,nd);
nand(s2,na,d);


nand(f,s1,s2);
endmodule