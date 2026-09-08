`timescale 1ns/1ns
`include "q13.v"

module q13_tb();
reg a,b,c;
wire cout,sum;

q13 q(a,b,c,cout,sum);

initial 
begin
$dumpfile("q13_tb.vcd");
$dumpvars(0,q13_tb);

a = 1'b0;b = 1'b0;c=1'b0;
#20
a = 1'b0;b = 1'b0;c=1'b1;
#20
a = 1'b0;b = 1'b1;c=1'b0;
#20
a = 1'b0;b = 1'b1;c=1'b1;
#20
a = 1'b1;b = 1'b0;c=1'b0;
#20
a = 1'b1;b = 1'b0;c=1'b1;
#20
a = 1'b1;b = 1'b1;c=1'b0;
#20
a = 1'b1;b = 1'b1;c=1'b1;
#20

$display("Test Complete");
end
endmodule