`timescale 1ns/1ns

`include "q1sr.v"

module q1sr_tb();

reg [5:0]I;
reg clk;
wire [5:0]a;

q1sr qt(I,clk,a);
initial begin

$dumpfile("q1sr_tb.vcd");
$dumpvars(0, q1sr_tb);

clk = 0;
forever #20 clk = ~clk;

end
initial begin

I = 6'b001010;
#20;
I  =6'b000100;
#20
I = 6'b010101;
#20;
I = 6'b000011;
#20;
I = 6'b000010;
#20

$display("Test Complete");
$finish;
end
endmodule