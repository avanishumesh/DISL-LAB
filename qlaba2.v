module q2(x,clk,reset,A,B,y);

input x,clk,reset;
output reg A,B;
output wire y;
wire Sa,Ra,Sb,Rb;
assign Sa = (~A&~B&~x) | (B&x);
assign Ra = A&~B&~x;
assign Sb = ~A | x;
assign Rb = A&~x;
assign y =~x | (A&B);
always @(posedge clk)
begin
if(reset)
begin
A<=0;
B<=0;
end
else
begin
A<=Sa | ~Ra&A;
B<=Sb | ~Rb&B;

end
end
endmodule