`timescale 1ns/1ns
`include "q16.v"

module q16_tb();

reg a3,a2,a1,a0,b3,b2,b1,b0;
wire cout,s3,s2,s1,s0;

q16 q(a3,a2,a1,a0,b3,b2,b1,b0,cout,s3,s2,s1,s0);

initial 
begin

$dumpfile("q16_tb.vcd");
$dumpvars(0,q16_tb);

a3 = 1'b1;a2 = 1'b0;a1 = 1'b0; a0 = 1'b1;
b3 = 1'b0;b2 = 1'b1;b1 = 1'b0; b0 = 1'b1;

#20

$display("Test Complete");
end
endmodule
