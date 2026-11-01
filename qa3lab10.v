module q3(
input [3:0]i,
input clk,
input reset,
output reg [3:0]q);
reg [1:0]x;
always @(posedge clk)
begin
if(reset)
begin
q<=i;
x<=0;
end
else
begin
q[0]<=q[(0+x)%4];
q[1]<=q[(1+x)%4];
q[2]<=q[(2+x)%4];
q[3]<=q[(3+x)%4];
if(x==4)
x <= 0;
else
x <= x+1;
end
end
endmodule

