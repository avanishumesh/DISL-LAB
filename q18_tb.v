`timescale 1ns/1ns
`include "q18.v"

module q18_tb();

reg w3,w2,w1,w0,s1,s0;
wire y;

q18 q(w3,w2,w1,w0,s1,s0,y);
initial
begin

$dumpfile("q18_tb.vcd");
$dumpvars(0,q18_tb);

s0 = 1'b0;s1= 1'b0;w3 = 1'b0;w2 = 1'b0;w1 = 1'b0;w0 = 1'b1;
#20
s0 = 1'b1;s1= 1'b0;w3 = 1'b0;w2 = 1'b0;w1 = 1'b1;w0 = 1'b0;
#20
s0 = 1'b0;s1= 1'b1;w3 = 1'b0;w2 = 1'b1;w1 = 1'b0;w0 = 1'b0;
#20
s0 = 1'b1;s1= 1'b1;w3 = 1'b1;w2 = 1'b0;w1 = 1'b0;w0 = 1'b0;
#20

$display("Test Complete");

end
endmodule