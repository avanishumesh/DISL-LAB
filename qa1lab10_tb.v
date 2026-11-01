`timescale 1ns/1ns
`include "qa1lab10.v"

module qa1lab10_tb();

reg w,clk,reset;

wire [3:0]q;
q1 qt(w,clk,reset,q);

initial begin

$dumpfile("qa1lab10_tb.vcd");
$dumpvars(0,qa1lab10_tb);

clk = 0;
forever #10 clk = ~clk;
end
initial begin
reset = 1;
#20;
reset = 0;
w = 1;
#100;
w = 0;
#40;
$display("Test complete");
$finish;
end
endmodule

