`timescale 1ns/1ns
`include "q15.v"

module q15_tb();
reg a0,a1,b0,b1;
wire p0,p1,p2,p3,p4;

q15 q(a1,a0,b1,b0,p0,p1,p2,p3);

initial 
begin 
$dumpfile("q15_tb.vcd");
$dumpvars(0,q15_tb);

a1 = 1'b1;a0 = 1'b1;
b1 = 1'b1; b0 = 1'b1;

#20

$display("Test Complete");
end
endmodule