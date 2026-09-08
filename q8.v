module q8(a,b,c,d,f);
input a,b,c,d;
output f;

nand(na,a,a);
nand(nc,c,c);

nand(s1,na,nc);
nand(s2,na,d);
nand(s3,b,nc);
nand(s4,b,d);

nand(f,s1,s2,s3,s4);
endmodule