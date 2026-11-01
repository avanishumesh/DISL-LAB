`timescale 1ns/1ns
`include "qa3lab10.v"

module qa3lab10_tb();

reg clk,reset;
reg [3:0]i;
wire [3:0]q;

q3 qt(i,clk,reset,q);

initial begin
$dumpfile("qa3lab10_tb.vcd");
$dumpvars(0,qa3lab10_tb);

clk = 0;
forever #10 clk = ~clk;
end
initial begin
i = 4'b0010;
reset = 1;
#20;
reset = 0;

#200;

$display("Test Complete");
$finish;

end
endmodule