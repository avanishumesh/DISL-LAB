module q1ff(D,Clock,Resetn,Q);
	input D, Clock,Resetn;
	output Q;
	reg Q;
	always @(posedge Clock or posedge Resetn)
	begin
	if(!Resetn)
		Q<=D;
	else
		Q<=1'b0;
end
endmodule
	