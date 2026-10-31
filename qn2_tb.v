`timescale 1ns/1ns

`include "qn2.v"

module qn2_tb();

parameter N = 8;

reg [N-1:0]d;
reg clk;

wire [N-1:0]q;

qn2 #(N) q2(d,clk,q);

initial begin

$dumpfile("qn2_tb.vcd");
$dumpvars(0,qn2_tb);

clk = 0;
forever #10 clk = ~clk;
end
initial begin

d = 8'b00101011;
#20;
d= 8'b00110101;
#20

$display("Test complete");
$finish;
end
endmodule