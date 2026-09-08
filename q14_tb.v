`timescale 1ns/1ns
`include "q14.v"

module q14_tb();
reg a3,a2,a1,a0,b3,b2,b1,b0,cin;
wire cout,s3,s2,s1,s0;

q14 q(a3,a2,a1,a0,b3,b2,b1,b0,cin,cout,s3,s2,s1,s0);

initial 
begin 
$dumpfile("q14_tb.vcd");
$dumpvars(0,q14_tb);

cin = 1'b0;
a3 = 1'b1;a2 = 1'b0;a1 = 1'b1;a0 = 1'b0;
b3 = 1'b0;b2 = 1'b1;b1 = 1'b1; b0 = 1'b0;

#20

cin = 1'b1;
a3 = 1'b1;a2 = 1'b0;a1 = 1'b1;a0 = 1'b0;
b3 = 1'b0;b2 = 1'b1;b1 = 1'b1; b0 = 1'b0;

#20

$display("Test Complete");
end
endmodule