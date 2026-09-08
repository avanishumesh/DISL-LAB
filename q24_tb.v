`timescale 1ns/1ns
`include "q24.v"

module q24_tb();

reg [3:0]a;

output [1:0]y;

q24 q(a,y);

initial 
begin

$dumpfile("q24_tb.vcd");
$dumpvars(0,q24_tb);

a = 4'b1111;
#20
a = 4'b1000;
#20
a = 4'b0011;
#20

$display("Test Complete");
end 
endmodule
