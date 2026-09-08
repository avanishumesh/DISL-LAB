`timescale 1ns/1ns

`include "q25.v"

module q25_tb();

reg [15:0]a;
wire [3:0]y;

q25 q(a,y);

initial 
begin

$dumpfile("q25_tb.vcd");
$dumpvars(0,q25_tb);

a = 16'b1001000000000000;
#20
a = 16'b0001010000000000;
#20
a = 16'b0000000000010000;
#20

$display("Test Complete");

end
endmodule
