module q5(a,b,c,d,f);
input a,b,c,d;
output f;
not(nb,b);
or(p1,nb,d);
or(p2,b,c);
and(f,p1,p2);
endmodule