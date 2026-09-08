module four21(
input wire [3:0]w,
input wire [1:0]s,
output wire y
);

assign y = (s==2'b00)?w[0]:(s==2'b01)?w[1]:(s==2'b10)?w[2]:w[3];

endmodule

module q19(
input wire [15:0]w,
input wire [3:0]s,
output wire y
);
wire x0,x1,x2,x3;
four21 stage0(w[3:0],s[1:0],x0);
four21 stage1(w[7:4],s[1:0],x1);
four21 stage2(w[11:8],s[1:0],x2);
four21 stage3(w[15:12],s[1:0],x3);

four21 stage4({x3,x2,x1,x0},s[3:2],y);

endmodule

