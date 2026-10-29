`timescale 1ns/1ns

`include "qff3.v"

module qff3_tb();

reg j,k,reset,clock;

wire q;

qff3 q1(j,k,clock,reset,q);

initial begin
$dumpfile("qff3_tb.vcd");
$dumpvars(0,qff3_tb);

clock = 0;
forever #10 clock = ~clock;

end
initial begin

j =0;
k = 0;
reset = 1;

#20;
reset  = 0;
j=0;
k=0;
#20;

j=0;
k=1;
#20
j = 1;
k = 0;
#20;
j = 1;
k = 1;
#20;
j = 1;
k = 1;
#20;

$display("Test complete");
$finish;

end
endmodule