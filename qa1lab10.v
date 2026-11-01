module q1(
input w,
input clk,
input reset,
output reg [3:0]q);


always @(posedge clk)
begin
if(reset)
q <= 4'b0000;
else
begin
q[0] <= ~q[0];

if(w)
q[1] <= q[1]^q[0];
else
q[1] <= q[1]^~q[0];
if(w)
q[2] <= q[2]^(&q[1:0]);
else
q[2] <= q[2]^(~|q[1:0]);

if(w)
q[3] <= q[3]^(&q[2:0]);
else
q[3] <= q[3]^(~|q[2:0]);

end
end
endmodule