`timescale 1ns/1ns

`include "q22.v"

module q22_tb();

reg [3:0]a;

reg en;

wire [15:0]y;

q22 q(a,en,y);

initial 
begin

$dumpfile("q22_tb.vcd");
$dumpvars(0,q22_tb);

en = 1'b1;a = 4'b1000;
#20
en = 1'b1;a = 4'b1100;
#20
en = 0;
#20

$display("Test Complete");

end
endmodule


