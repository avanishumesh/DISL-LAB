`timescale 1ns/1ns
`include "qring1.v"

module qring1_tb();

reg clk,reset;
wire [3:0]q;

q1 qr(clk,reset,q);

initial begin
$dumpfile("qring1_tb.vcd");
$dumpvars(0,qring1_tb);

clk = 0;
forever #10 clk = ~clk;

end
initial begin

reset = 1;
#20;
reset = 0;
#220;

$display("test complete");
$finish;

end
endmodule