module mod10(
input clk,
input reset,
input enable,
output reg [3:0]q);

always @(posedge clk)
begin
if(reset)
q<=4'b0000;
else if(enable)
begin
if(q==9)
q<=0;
else
q<= q+1;
end
end
endmodule

module q2(
input clk,
input reset,
output [3:0]qunits,
output [3:0]qtens
);

mod10 m(clk,reset,1'b1,qunits);
mod10 m1(clk,reset,qunits==9,qtens);

endmodule
