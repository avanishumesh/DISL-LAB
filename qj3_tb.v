`timescale 1ns/1ns
`include "qj3.v"

module qj3_tb();

reg clk;
reg reset;

wire [4:0]q;

qj3 q3(reset,clk,q);

initial begin

$dumpfile("qj3_tb.vcd");
$dumpvars(0,qj3_tb);

clk = 0;
forever #10 clk = ~clk;

end

initial begin

reset = 1;
#20;
reset = 0;
#220;
$display("Test complete");
$finish;

end
endmodule


