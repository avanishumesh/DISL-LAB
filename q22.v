module decoder3to8(

input [2:0]a,

input en,

output reg [7:0]y
);
integer i;

always @(*) begin
	y = 8'b00000000;

	if(en == 1'b1) begin
		for(i = 0;i<8;i = i+1)begin
			if(a==i)begin
			y[i]=1'b1;
				end
				      end
		       end
	     end
endmodule

module q22(
input [3:0]a,
input en,
output [15:0]y
);

wire en1,en2;

assign en1 = en&~a[3];

assign en2 = en&a[3];

decoder3to8 stage0(a[2:0],en1,y[7:0]);
decoder3to8 stage1(a[2:0],en2,y[15:8]);

endmodule
