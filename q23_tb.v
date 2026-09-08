`timescale 1ns/1ns
`include "q23.v"


module q23_tb();
reg [3:0]a;
reg en;
wire [15:0]y;


q23 q(a,en,y);

initial 
begin

$dumpfile("q23_tb.vcd");
$dumpvars(0,q23_tb);

en = 1;a = 4'b1010;
#20
en = 0;
#20

$display("Test Complete");
end 
endmodule

