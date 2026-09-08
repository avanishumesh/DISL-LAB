module decode24(

input a,
input b,
input en,
output reg [3:0]y

);

always @(*) begin
	if(en == 1'b0) begin
	y = 4'b0000;
	end
	else if(a==1'b0 && b==1'b0) begin
	y = 4'b0001;
	end
	else if(a==1'b0 && b==1'b1) begin
	y = 4'b0010;
	end
	else if(a==1'b1 && b==1'b0) begin
	y = 4'b0100;
	end
	else begin
	y = 4'b1000;
	end
end
endmodule

module q21(
input a,
input b,
input c,
input en,
output [7:0]y
);
wire en1,en2;
assign en1 = en&~c;
assign en2 = en&c;

decode24 stage0(a,b,en1,y[3:0]);
decode24 stage1(a,b,en2,y[7:4]);

endmodule





