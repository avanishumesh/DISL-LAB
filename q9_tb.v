`timescale 1ns/1ns
`include "q9.v"

module q9_tb();
reg x1,x2,x3,x4;
wire f;

q9 q(x1,x2,x3,x4,f);
initial
begin
$dumpfile("q9_tb.vcd");
$dumpvars(0,q9_tb);

x1 = 1'b0;x2 = 1'b0;x3 = 1'b0;x4 = 1'b0;
#20
x1 = 1'b0;x2 = 1'b0;x3 = 1'b0;x4 = 1'b1;
#20
x1 = 1'b0;x2 = 1'b0;x3 = 1'b1;x4 = 1'b0;
#20
x1 = 1'b0;x2 = 1'b0;x3 = 1'b1;x4 = 1'b1;
#20
x1 = 1'b0;x2 = 1'b1;x3 = 1'b0;x4 = 1'b0;
#20
x1 = 1'b0;x2 = 1'b1;x3 = 1'b0;x4 = 1'b1;
#20
x1 = 1'b0;x2 = 1'b1;x3 = 1'b1;x4 = 1'b0;
#20
x1 = 1'b0;x2 = 1'b1;x3 = 1'b1;x4 = 1'b1;
#20
x1 = 1'b1;x2 = 1'b0;x3 = 1'b0;x4 = 1'b0;
#20
x1 = 1'b1;x2 = 1'b0;x3 = 1'b0;x4 = 1'b1;
#20
x1 = 1'b1;x2 = 1'b0;x3 = 1'b1;x4 = 1'b0;
#20
x1 = 1'b1;x2 = 1'b0;x3 = 1'b1;x4 = 1'b1;
#20
x1 = 1'b1;x2 = 1'b1;x3 = 1'b0;x4 = 1'b0;
#20
x1 = 1'b1;x2 = 1'b1;x3 = 1'b0;x4 = 1'b1;
#20
x1 = 1'b1;x2 = 1'b1;x3 = 1'b1;x4 = 1'b0;
#20
x1 = 1'b1;x2 = 1'b1;x3 = 1'b1;x4 = 1'b1;
#20


$display("Test Complete");
end
endmodule