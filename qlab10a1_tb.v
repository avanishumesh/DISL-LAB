`timescale 1ns/1ns

`include "qlab10a1.v"

module qlaba1_tb();

reg x,clk,reset;
wire A,B,C;

q1 qa(x,clk,reset,A,B,C);

initial begin

$dumpfile("qlab10a1_tb.vcd");
$dumpvars(0,qlaba1_tb);

clk = 0;
forever #10 clk = ~clk;
end

initial begin

reset = 1;
#20;
reset = 0;
x = 1;
#20;
x=1;
#20;
x=0;
#20;
x=1;
#20;
$display("Test Complete");
$finish;

end
endmodule
