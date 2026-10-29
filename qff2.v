module qff2(T,Clock,Q,Reset);
input T,Clock,Reset;
output Q;
reg Q;

always @( negedge Clock or negedge Reset)
begin
	if(!Reset)
		Q <= 1'b0;
	else if(T)
		Q<=~Q;
	else
		Q<=Q;
end
endmodule

	
	