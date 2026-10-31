module q1(E,x,clk,reset,A,B);
input E,x,clk,reset;
output reg A,B;

wire Ja,Jb,Ka,Kb;

assign Ja = E*(B~^x);
assign Ka = E*(B~^x);

assign Jb = E;
assign Kb = E;

always @(posedge clk)
begin
	
	if(reset)
	begin
	A<=0;
	B<=0;
end
	else
	begin
	if(Ja&& Ka)
	A<=~A;
	if(Jb&&Kb)
	B<= ~B;
end
end
endmodule