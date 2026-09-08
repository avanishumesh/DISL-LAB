module decoder2to4(

input a,
input b,
input en,
output reg [3:0]y
);

always @(*) begin
	if(en == 1'b0) begin
		y = 4'b1111;
	end
else begin
	case({a,b})
	2'b00:y = 4'b1110;
	2'b01:y = 4'b1101;
	2'b10:y = 4'b1011;
	2'b11:y = 4'b0111;
	default:y = 4'b1111;
endcase
end
end
endmodule

module q23(
input [3:0]a,
input en,

output [15:0]y
);

wire [3:0]enable;

decoder2to4 stage0(a[3],a[2],en,enable);
decoder2to4 stage1(a[1],a[0],~enable[0],y[3:0]);
decoder2to4 stage2(a[1],a[0],~enable[1],y[7:4]);
decoder2to4 stage3(a[1],a[0],~enable[2],y[11:8]);
decoder2to4 stage4(a[1],a[0],~enable[3],y[15:12]);

endmodule


