`timescale 1ns/1ns
`include "qse2.v"

module qse2_tb();

reg x,clk,reset;
wire A,B;

q2 a(x,clk,reset,A,B);

initial begin
$dumpfile("qse2_tb.vcd");
$dumpvars(0,qse2_tb);
clk = 0;
forever #10 clk = ~clk;
end

initial begin
reset = 1;
#20
reset = 0;
x = 1;
#20;
x=0;
#20;
x= 1;
#20;

$display("Test Complete");
$finish;

end
endmodule

