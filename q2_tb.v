`timescale 1ns/1ns
`include "q2.v"

module q2_tb();
reg x1,x2,x3,x4;
wire g,f;
q2 q(x1,x2,x3,x4,f,g);
initial 
begin
$dumpfile("q2_tb.vcd");
$dumpvars(0,q2_tb);
x1=1'b0;x2=1'b0;x3=1'b0;x4=1'b0;
#20
x1=1'b0;x2=1'b0;x3=1'b0;x4=1'b1;
#20
x1=1'b0;x2=1'b0;x3=1'b1;x4=1'b0;
#20
x1=1'b0;x2=1'b0;x3=1'b1;x4=1'b1;
#20
x1=1'b0;x2=1'b1;x3=1'b0;x4=1'b0;
#20
x1=1'b0;x2=1'b1;x3=1'b0;x4=1'b1;
#20
x1=1'b0;x2=1'b1;x3=1'b1;x4=1'b0;
#20
x1=1'b0;x2=1'b1;x3=1'b1;x4=1'b1;
#20
x1=1'b1;x2=1'b0;x3=1'b0;x4=1'b0;
#20
x1=1'b1;x2=1'b0;x3=1'b0;x4=1'b1;
#20
x1=1'b1;x2=1'b0;x3=1'b1;x4=1'b0;
#20
x1=1'b1;x2=1'b0;x3=1'b1;x4=1'b1;
#20
x1=1'b1;x2=1'b1;x3=1'b0;x4=1'b0;
#20
x1=1'b1;x2=1'b1;x3=1'b0;x4=1'b1;
#20
x1=1'b1;x2=1'b1;x3=1'b1;x4=1'b0;
#20
x1=1'b1;x2=1'b1;x3=1'b1;x4=1'b1;
#20

$display("Test Complete");
end
endmodule