`timescale 1ns/1ns
`include "qff2.v"

module qff2_tb();

reg T,Clock,Reset;
wire Q;
qff2 q2(T,Clock,Q,Reset);
initial begin


$dumpfile("qff2_tb.vcd");
$dumpvars(0,qff2_tb);

Clock = 0;
forever #10 Clock = ~Clock;
end
initial
begin
T = 0;
Reset = 0;
#20
Reset = 1;
T = 1;
#20
T = 0;
#20;
T = 1;
#20;
T = 1;
#20
T = 0;
#20

$display("Test Complete");
$finish;
end
endmodule