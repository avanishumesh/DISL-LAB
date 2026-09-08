`timescale 1ns/1ns
`include "q17.v"

module q17_tb();

reg [3:0]A;
reg [3:0]B;

wire Al,Ag,E;

q17 q(A,B,Ag,Al,E);

initial 
begin

$dumpfile("q17_tb.vcd");
$dumpvars(0,q17_tb);

A = 4'b1100;B = 4'b1000;
#20
A = 4'b1100;B = 4'b1100;
#20
A = 4'b0100;B = 4'b1000;
#20

$display("Test Complete");
end
endmodule

