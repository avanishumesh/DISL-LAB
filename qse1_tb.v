`timescale 1ns/1ns
`include "qse1.v"

module qse1_tb();

reg E,x,clk,reset;

wire A,B;

q1 q(E,x,clk,reset,A,B);

initial begin 
$dumpfile("qse1_tb.vcd");
$dumpvars(0,qse1_tb);
clk = 0;
forever #10 clk = ~clk;
end;
initial begin
reset = 1;

E = 1;
x = 0;
#20;
reset  = 0;
E = 0;
x = 1;
#20;
x = 0;
#20;
E = 1;
x = 1;
#20
$display("Test Complete");
$finish;
end
endmodule