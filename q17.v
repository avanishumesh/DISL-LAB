module q17(
input [3:0]A,
input [3:0]B,
output reg Ag,
output reg Al,
output reg E
);


always @(*) begin
	Ag = 1'b0;
	Al = 1'b0;
	E = 1'b0;
	if(A>B) begin
	Ag = 1'b1;
	end
	else if(A<B) begin
	Al = 1'b1;
	end
	else begin
	E = 1'b1;
	end
end
endmodule
