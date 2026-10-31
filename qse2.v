module q2(x,clk,reset,A,B);

input x,reset,clk;
output reg A,B;

wire Ta,Tb;

assign Ta = B*(~A+~x);
assign Tb = ~A*(B~^x) + A*~x;

always @(posedge clk)
begin
	if(reset) begin
	A<=0;
	B<=0;
end
	else
	begin
	A<=A^Ta;
	B<=B^Tb;
	end
end
endmodule
		

