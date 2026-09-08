`timescale 1ns/1ns
`include "q12.v"

module q12_tb();
reg a,b;
wire cout,sum;

q12 q(a,b,cout,sum);

initial 
begin
$dumpfile("q12_tb.vcd");
$dumpvars(0,q12_tb);

a = 1'b0;b = 1'b0;
#20
a = 1'b0;b = 1'b1;
#20
a = 1'b1;b = 1'b0;
#20
a = 1'b1;b = 1'b1;
#20

$display("Test Complete");
end
endmodule