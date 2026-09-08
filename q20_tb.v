`timescale 1ns/1ns
`include "q20.v"

module q20_tb();

reg [15:0]w;
reg [3:0]s;

wire y;

q20 q(w,s,y);

initial
begin
$dumpfile("q20_tb.vcd");
$dumpvars(0,q20_tb);

w = 16'b0000000000000001; s = 4'b0000;
#20
w = 16'b1000000000000000; s = 4'b1111;
#20
w = 16'b0000000000000100; s = 4'b0010;
#20

$display("Test Complete");

end
endmodule
