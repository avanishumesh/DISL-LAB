module eightto1(
input wire [2:0]s,
input wire [7:0]w,
output reg y
);
always @(*) begin
	case(s)
	3'b000:y = w[0];
	3'b001:y = w[1];
	3'b010:y = w[2];
	3'b011:y = w[3];
	3'b100:y = w[4];
	3'b101:y = w[5];
	3'b110:y = w[6];
	3'b111:y = w[7];
	default:y = 1'b0;
endcase
end
endmodule
module twoto1(s,w1,w0,y);
input w0,w1,s;
output reg y;

always @(*) begin
	if(s==1'b0) begin
		y = w0;
	end
	else begin
		y=w1;
	end
end
endmodule

module q20(
input wire [15:0]w,
input wire [3:0]s,

output wire y
);
wire x0,x1;
eightto1 stage0(s[2:0],w[7:0],x0);
eightto1 stage1(s[2:0],w[15:8],x1);

twoto1 stage3(s[3],x1,x0,y);

endmodule






