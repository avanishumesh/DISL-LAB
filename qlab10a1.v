module q1(x,clk,reset,A,B,C);
input x,clk,reset;
output reg A,B,C;

wire Ja,Ka,Jb,Kb,Av,Bc;

assign Ja = ~B&~x;
assign Ka = 1;
assign Jb = A | ~C&x;
assign Kb = C&x | ~C&~x;
assign Jc = A&~x | ~A&~B&x;
assign Kc = ~x;

always @(posedge clk)
begin
if(reset)
begin
A<=0;
B<=0;
C<=0;
end
else
begin
A<=(Ja&~A | ~Ka&A);
B<=(Jb&~B | ~Kb&B);
C<=(Jc&~C | ~Kc&C);
end
end
endmodule
