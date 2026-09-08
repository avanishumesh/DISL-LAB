module two21(w1,w0,s,y);

input w0,w1,s;

output reg y;

always @(*) begin
	if(s == 1'b1) begin
		y = w1;
	end
	else begin
		y = w0;
	end
end
endmodule
module q18(w3,w2,w1,w0,s1,s0,y);
input w3,w2,w1,w0,s1,s0;
output y;

wire x0,x1;

two21 stage0(w1,w0,s0,x0);
two21 stage1(w3,w2,s0,x1);
two21 stage2(x1,x0,s1,y);

endmodule

