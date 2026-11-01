`timescale 1ns/1ns
`include "qlaba2.v"

module qlab10a2_tb();

reg x,clk,reset;
wire A,B,y;

q2 qa(x,clk,reset,A,B,y);

initial begin
$dumpfile("qlab10a2_tb.vcd");
$dumpvars(0,qlab10a2_tb);

clk = 0;
forever #10 clk = ~clk;
end
initial begin

reset = 1;
#20;
reset = 0;
x = 1;
#20;
x = 1;
#20;
x = 1;
#20;
x = 0;
#20
$display("Test Complete");
$finish;
end 
endmodule