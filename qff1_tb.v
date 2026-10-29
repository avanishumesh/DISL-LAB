`timescale 1ns/1ns

`include "q1ff.v"

module qff1_tb();
	reg D, Resetn, Clock;
	wire Q;
q1ff q(D,Clock,Resetn,Q);
initial begin
	$dumpfile("qff1_tb.vcd");
	$dumpvars(0,qff1_tb);
	Clock = 0;
	forever #10 Clock = ~Clock;
	end
	
initial begin
	D = 0;
	Resetn = 1;
	
	#20;
	Resetn = 0;
	D = 1;
	#20;
	D=0;
	#20;
	D=1;
	#20;
	D=1;
	#20;
	D=1;
	#20;
	D=0;
	#20;
	Resetn = 0;
	#20;
	$display("Test Complete");
	$finish;
end
endmodule

	
	
	

