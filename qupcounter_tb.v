`timescale 1ns/1ns

`include "qupcounter2.v"

module qupcounter_tb();


reg clk,reset;

wire [3:0]q;

q2 qup(clk,reset,q);

initial begin

$dumpfile("qupcounter_tb.vcd");
$dumpvars(0,qupcounter_tb);

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
