`timescale 1ns/1ns

`include "q19.v"

module q19_tb();

reg [15:0]w;
reg [3:0]s;
wire y;

q19 q(w,s,y);

initial begin

$dumpfile("q19_tb.vcd");
$dumpvars(0,q19_tb); 

s = 4'b0000;w = 16'b0000000000000001;
#20
s = 4'b1111;w = 16'b1000000000000000;
#20
$display("Test Complete");
end
endmodule
