`timescale 1ns/1ns

`include "q21.v"

module q21_tb();

reg a,b,c,en;

wire [7:0]y;

q21 q(a,b,c,en,y);

initial 
begin

$dumpfile("q21_tb.vcd");
$dumpvars(0,q21_tb);



en = 1'b1;
a = 1'b1;b=1'b1;c=1'b0;
#20

en = 1'b1;
a = 1'b1;b=1'b1;c=1'b1;
#20

en = 1'b0;
a = 1'b1;b=1'b1;c=1'b0;
#20

$display("Test Complete");
end
endmodule

