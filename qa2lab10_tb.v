`timescale 1ns/1ns
`include "qa2lab10.v"

module qa2lab10_tb();

reg clk,reset;

wire [3:0]qunits;
wire [3:0]qtens;

q2 qt(clk,reset,qunits,qtens);
initial begin
$dumpfile("qa2lab10_tb.vcd");
$dumpvars(0,qa2lab10_tb);
clk = 0;
forever #10 clk = ~clk;

end
initial begin
reset = 1;
#20;
reset = 0;
#260;
$display("Test Complete");
$finish;

end
endmodule