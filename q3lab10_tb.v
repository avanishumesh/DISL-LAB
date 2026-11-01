`timescale 1ns/1ns
`include "q3lab10.v"

module q3lab10_tb();

reg clk,reset;
wire [2:0]q;

q3 q10(clk,reset,q);

initial begin
$dumpfile("q3lab10_tb.vcd");
$dumpvars(0,q3lab10_tb);

clk = 0;
forever #10 clk = ~clk;

end
initial begin

reset = 1;
#20
reset = 0;
#220;

$display("Test Complete");
$finish;
end
endmodule